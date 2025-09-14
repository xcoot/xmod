.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/WidgetBackupProvider;
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;


# static fields
.field public static final APPWIDGET_WIDGET_SUPPORTED_SIZES:[I

.field public static final DEBUG:Z

.field public static final DEFAULT_GENERATED_PREVIEW_RESET_INTERVAL_MS:J

.field public static final MIN_UPDATE_PERIOD:I

.field public static final UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final isProductDEV:Z

.field public mActivityManager:Landroid/app/ActivityManager;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAlarmHistory:[Ljava/lang/String;

.field public mAlarmHistoryIndex:I

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

.field public mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

.field public final mBroadcastReceiver:Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

.field public mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

.field public final mContext:Landroid/content/Context;

.field public mDebugMonitorEndTime:J

.field public mDebugMonitorProviderCount:I

.field public mDebugMonitorProviderInfoLoadTime:J

.field public mDebugMonitorStartTime:J

.field public mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mFdFile:Ljava/io/File;

.field public mGeneratedPreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

.field public mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

.field public final mHostHistory:[Ljava/lang/String;

.field public mHostHistoryIdx:I

.field public final mHosts:Ljava/util/ArrayList;

.field public mInteractiveBroadcast:Landroid/os/Bundle;

.field public mIsCombinedBroadcastEnabled:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mLastSeqNumber:Ljava/util/HashMap;

.field public final mLoadedUserIds:Landroid/util/SparseBooleanArray;

.field public mLocale:Ljava/util/Locale;

.field public final mLock:Ljava/lang/Object;

.field public mMaxWidgetBitmapMemory:I

.field public final mNextAppWidgetIds:Landroid/util/SparseIntArray;

.field public mPackageManager:Landroid/content/pm/IPackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageToPidMap:Ljava/util/HashMap;

.field public final mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

.field public final mPidToPackageMap:Ljava/util/HashMap;

.field public final mProviders:Ljava/util/List;

.field public final mProvidersHistory:[Ljava/lang/String;

.field public mProvidersHistoryIndex:I

.field public final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

.field public mSafeMode:Z

.field public mSaveStateHandler:Landroid/os/Handler;

.field public mScreenDensity:I

.field public mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

.field public mSkipPackageName:Ljava/lang/String;

.field public mSpm:Lcom/samsung/android/knox/SemPersonaManager;

.field public mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public mUserManager:Landroid/os/UserManager;

.field public final mWidgetPackages:Landroid/util/SparseArray;

.field public final mWidgetPackagesLock:Ljava/lang/Object;

.field public final mWidgets:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$mapplyResourceOverlaysToWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/util/Set;IZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_a

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 18
    .line 19
    const-string v4, "AppWidgetServiceImpl"

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    const-string v3, "applyResourceOverlaysToWidgetsLocked provider is null. i:"

    .line 24
    .line 25
    const-string v5, " size:"

    .line 26
    .line 27
    invoke-static {v2, v0, v3, v5, v4}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eq v5, p2, :cond_1

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_1
    iget-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 41
    .line 42
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-nez p3, :cond_2

    .line 49
    .line 50
    move-object v6, p1

    .line 51
    check-cast v6, Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_2

    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_2
    const/4 v6, 0x0

    .line 62
    :try_start_0
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 63
    .line 64
    const-wide/16 v8, 0x400

    .line 65
    .line 66
    invoke-interface {v7, v5, v8, v9, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception v7

    .line 72
    const-string v8, "Failed to retrieve app info for "

    .line 73
    .line 74
    const-string v9, " userId="

    .line 75
    .line 76
    invoke-static {p2, v8, v5, v9}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v4, v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    move-object v4, v6

    .line 84
    :goto_1
    if-eqz v4, :cond_9

    .line 85
    .line 86
    iget-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 87
    .line 88
    if-eqz v5, :cond_9

    .line 89
    .line 90
    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 91
    .line 92
    if-nez v5, :cond_3

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_3
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 96
    .line 97
    if-eqz v5, :cond_9

    .line 98
    .line 99
    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-nez v7, :cond_4

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_4
    new-instance v7, Landroid/content/pm/ApplicationInfo;

    .line 111
    .line 112
    invoke-direct {v7, v5}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 113
    .line 114
    .line 115
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 116
    .line 117
    if-nez v5, :cond_5

    .line 118
    .line 119
    move-object v5, v6

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    invoke-virtual {v5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, [Ljava/lang/String;

    .line 126
    .line 127
    :goto_2
    iput-object v5, v7, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 128
    .line 129
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 130
    .line 131
    if-nez v4, :cond_6

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-virtual {v4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    move-object v6, v4

    .line 139
    check-cast v6, [Ljava/lang/String;

    .line 140
    .line 141
    :goto_3
    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 142
    .line 143
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 144
    .line 145
    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 146
    .line 147
    iput-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 148
    .line 149
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    move v5, v1

    .line 156
    :goto_4
    if-ge v5, v4, :cond_9

    .line 157
    .line 158
    iget-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 165
    .line 166
    iget-object v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 167
    .line 168
    if-eqz v8, :cond_7

    .line 169
    .line 170
    invoke-virtual {v8, v7}, Landroid/widget/RemoteViews;->updateAppInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 174
    .line 175
    if-eqz v6, :cond_8

    .line 176
    .line 177
    invoke-virtual {v6, v7}, Landroid/widget/RemoteViews;->updateAppInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 178
    .line 179
    .line 180
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_a
    return-void
.end method

.method public static -$$Nest$mhandleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Host dead #2 : "

    .line 5
    .line 6
    const-string v1, "Widget host dead: "

    .line 7
    .line 8
    const-string v2, "Skip callback clear #2.appWidgetId : "

    .line 9
    .line 10
    :try_start_0
    const-string v3, "AppWidgetServiceImpl"

    .line 11
    .line 12
    const-string v4, "Trying to notify provider update"

    .line 13
    .line 14
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 18
    .line 19
    .line 20
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception p4

    .line 24
    iget-object p5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter p5

    .line 27
    :try_start_1
    iget-object p6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 28
    .line 29
    if-eq p6, p2, :cond_0

    .line 30
    .line 31
    const-string p0, "AppWidgetServiceImpl"

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    const-string p2, "AppWidgetServiceImpl"

    .line 52
    .line 53
    new-instance p6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 59
    .line 60
    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", "

    .line 64
    .line 65
    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p6

    .line 75
    invoke-static {p2, p6, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 84
    .line 85
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p6, ", "

    .line 89
    .line 90
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p3, " "

    .line 97
    .line 98
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 p0, 0x0

    .line 112
    iput-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 113
    .line 114
    :goto_0
    monitor-exit p5

    .line 115
    :goto_1
    return-void

    .line 116
    :goto_2
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw p0
.end method

.method public static -$$Nest$mhandleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v3, p3

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    const-string v0, "#NULL#"

    .line 10
    .line 11
    :goto_0
    move-object v4, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p4 .. p4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 48
    .line 49
    if-eqz v7, :cond_2

    .line 50
    .line 51
    iget-object v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v8, :cond_2

    .line 54
    .line 55
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_2

    .line 60
    .line 61
    iget v0, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 62
    .line 63
    move v7, v0

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/4 v7, 0x0

    .line 66
    :goto_3
    const-string v0, "AppWidgetServiceImpl"

    .line 67
    .line 68
    const-string/jumbo v8, "handleNotifyUpdateAppWidget, appWidgetId = "

    .line 69
    .line 70
    .line 71
    invoke-static {v3, v8, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter v8

    .line 77
    const/16 v9, 0x40

    .line 78
    .line 79
    const/4 v10, 0x1

    .line 80
    if-eqz p4, :cond_a

    .line 81
    .line 82
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v7, :cond_4

    .line 87
    .line 88
    const/4 v11, 0x0

    .line 89
    goto :goto_4

    .line 90
    :cond_4
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLastSeqNumber:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    check-cast v11, Ljava/lang/Integer;

    .line 101
    .line 102
    :goto_4
    const/16 v12, 0x320

    .line 103
    .line 104
    if-nez v11, :cond_5

    .line 105
    .line 106
    move v11, v12

    .line 107
    goto :goto_5

    .line 108
    :cond_5
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    :goto_5
    if-eqz v7, :cond_8

    .line 113
    .line 114
    add-int/lit16 v13, v11, 0xc8

    .line 115
    .line 116
    if-le v0, v13, :cond_8

    .line 117
    .line 118
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLastSeqNumber:Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v7, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getFdFromPackage(ILjava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    iget-object v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mFdFile:Ljava/io/File;

    .line 136
    .line 137
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    if-nez v12, :cond_6

    .line 142
    .line 143
    const/4 v12, 0x0

    .line 144
    goto :goto_6

    .line 145
    :cond_6
    array-length v12, v12

    .line 146
    :goto_6
    if-le v11, v9, :cond_7

    .line 147
    .line 148
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 149
    .line 150
    invoke-virtual {v1, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 155
    .line 156
    .line 157
    new-instance v5, Landroid/content/Intent;

    .line 158
    .line 159
    const-string/jumbo v6, "com.sec.android.launcher.action.UNBIND_WIDGET"

    .line 160
    .line 161
    .line 162
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v6, "appWidgetId"

    .line 166
    .line 167
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 171
    .line 172
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 173
    .line 174
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v1, v5, v3, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 179
    .line 180
    .line 181
    new-instance v3, Landroid/content/Intent;

    .line 182
    .line 183
    const-string/jumbo v5, "com.samsung.android.appwidget.action.APPWIDGET_UNBIND"

    .line 184
    .line 185
    .line 186
    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v5, "appWidgetPackageName"

    .line 190
    .line 191
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 195
    .line 196
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 197
    .line 198
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v1, v3, v4, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 203
    .line 204
    .line 205
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 206
    .line 207
    .line 208
    const-string v1, "AppWidgetServiceImpl"

    .line 209
    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v4, "Detected abnormal operation#1. seqNumber="

    .line 216
    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v0, " pidFd="

    .line 224
    .line 225
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v0, " serverFd="

    .line 232
    .line 233
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v0, " kill widget="

    .line 240
    .line 241
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    monitor-exit v8

    .line 255
    goto/16 :goto_d

    .line 256
    .line 257
    :catchall_0
    move-exception v0

    .line 258
    goto/16 :goto_f

    .line 259
    .line 260
    :cond_7
    const-string v0, "AppWidgetServiceImpl"

    .line 261
    .line 262
    new-instance v13, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string/jumbo v14, "handleNotifyUpdateAppWidget("

    .line 268
    .line 269
    .line 270
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v14, ") mLastSeqNumber="

    .line 277
    .line 278
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    iget-object v14, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLastSeqNumber:Ljava/util/HashMap;

    .line 282
    .line 283
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v14, "%n views.estimateMemoryUsage()="

    .line 287
    .line 288
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual/range {p4 .. p4}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    .line 292
    .line 293
    .line 294
    move-result v14

    .line 295
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v14, "%nTotal Memory : %6.2f MB"

    .line 299
    .line 300
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 301
    .line 302
    .line 303
    move-result-object v15

    .line 304
    invoke-virtual {v15}, Ljava/lang/Runtime;->totalMemory()J

    .line 305
    .line 306
    .line 307
    move-result-wide v5

    .line 308
    long-to-double v5, v5

    .line 309
    const-wide/high16 v16, 0x4130000000000000L    # 1048576.0

    .line 310
    .line 311
    div-double v5, v5, v16

    .line 312
    .line 313
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v5, " pidFd="

    .line 329
    .line 330
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v5, " serverFd="

    .line 337
    .line 338
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_8
    add-int/lit16 v11, v11, -0xc8

    .line 353
    .line 354
    if-ge v0, v11, :cond_a

    .line 355
    .line 356
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLastSeqNumber:Ljava/util/HashMap;

    .line 357
    .line 358
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    if-ge v0, v12, :cond_9

    .line 363
    .line 364
    move v0, v12

    .line 365
    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    :cond_a
    :goto_7
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :try_start_1
    const-string v0, "AppWidgetServiceImpl"

    .line 374
    .line 375
    new-instance v5, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v6, "Trying to notify widget update for package "

    .line 381
    .line 382
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    if-nez p4, :cond_b

    .line 386
    .line 387
    const-string/jumbo v6, "null"

    .line 388
    .line 389
    .line 390
    goto :goto_8

    .line 391
    :catch_0
    move-exception v0

    .line 392
    goto :goto_9

    .line 393
    :cond_b
    invoke-virtual/range {p4 .. p4}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    :goto_8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v6, " with widget id: "

    .line 401
    .line 402
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    invoke-interface/range {p2 .. p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 416
    .line 417
    .line 418
    move-wide/from16 v5, p5

    .line 419
    .line 420
    iput-wide v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    .line 421
    .line 422
    if-eqz v7, :cond_15

    .line 423
    .line 424
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPidToPackageMap:Ljava/util/HashMap;

    .line 425
    .line 426
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    check-cast v0, Ljava/lang/String;

    .line 435
    .line 436
    if-eqz v0, :cond_c

    .line 437
    .line 438
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageToPidMap:Ljava/util/HashMap;

    .line 439
    .line 440
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    check-cast v0, Ljava/util/HashSet;

    .line 445
    .line 446
    if-eqz v0, :cond_c

    .line 447
    .line 448
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    :cond_c
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPidToPackageMap:Ljava/util/HashMap;

    .line 456
    .line 457
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageToPidMap:Ljava/util/HashMap;

    .line 465
    .line 466
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    check-cast v0, Ljava/util/HashSet;

    .line 471
    .line 472
    if-nez v0, :cond_d

    .line 473
    .line 474
    new-instance v0, Ljava/util/HashSet;

    .line 475
    .line 476
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 477
    .line 478
    .line 479
    :cond_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageToPidMap:Ljava/util/HashMap;

    .line 487
    .line 488
    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 489
    .line 490
    .line 491
    goto/16 :goto_d

    .line 492
    .line 493
    :goto_9
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 494
    .line 495
    monitor-enter v5

    .line 496
    :try_start_2
    iget-object v6, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 497
    .line 498
    move-object/from16 v8, p2

    .line 499
    .line 500
    if-eq v6, v8, :cond_e

    .line 501
    .line 502
    move v6, v10

    .line 503
    goto :goto_a

    .line 504
    :cond_e
    const/4 v6, 0x0

    .line 505
    :goto_a
    if-eqz v6, :cond_f

    .line 506
    .line 507
    const-string v4, "AppWidgetServiceImpl"

    .line 508
    .line 509
    new-instance v7, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    .line 513
    .line 514
    const-string v8, "Skip callback clear #1.appWidgetId : "

    .line 515
    .line 516
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .line 528
    .line 529
    goto/16 :goto_c

    .line 530
    .line 531
    :catchall_1
    move-exception v0

    .line 532
    goto/16 :goto_e

    .line 533
    .line 534
    :cond_f
    instance-of v8, v0, Landroid/os/TransactionTooLargeException;

    .line 535
    .line 536
    if-eqz v8, :cond_14

    .line 537
    .line 538
    const-string v8, "AppWidgetServiceImpl"

    .line 539
    .line 540
    new-instance v11, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    const-string v12, "Skip callback clear #1.appWidgetId : "

    .line 546
    .line 547
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    const-string v12, " by TransactionTooLargeException. views.getPackage() = "

    .line 554
    .line 555
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v11

    .line 565
    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .line 567
    .line 568
    iget-object v8, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 569
    .line 570
    invoke-virtual {v1, v3, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 571
    .line 572
    .line 573
    move-result-object v8

    .line 574
    if-eqz v8, :cond_10

    .line 575
    .line 576
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v11

    .line 580
    invoke-static {v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v11

    .line 584
    iput-object v11, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->transactionError:Ljava/lang/String;

    .line 585
    .line 586
    :cond_10
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mFdFile:Ljava/io/File;

    .line 587
    .line 588
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 589
    .line 590
    .line 591
    move-result-object v11

    .line 592
    invoke-virtual {v1, v7, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getFdFromPackage(ILjava/lang/String;)I

    .line 593
    .line 594
    .line 595
    move-result v7

    .line 596
    if-le v7, v9, :cond_13

    .line 597
    .line 598
    if-eqz v11, :cond_11

    .line 599
    .line 600
    if-eqz v8, :cond_11

    .line 601
    .line 602
    const-string v7, "AppWidgetServiceImpl"

    .line 603
    .line 604
    new-instance v9, Ljava/lang/StringBuilder;

    .line 605
    .line 606
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .line 608
    .line 609
    const-string v12, "TransactionTooLargeException, App occupied fd are over 64, system fd count = "

    .line 610
    .line 611
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    array-length v11, v11

    .line 615
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    const-string v11, ", kill widget, w = "

    .line 619
    .line 620
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v9

    .line 630
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .line 632
    .line 633
    invoke-virtual {v1, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 634
    .line 635
    .line 636
    new-instance v7, Landroid/content/Intent;

    .line 637
    .line 638
    const-string/jumbo v9, "com.sec.android.launcher.action.UNBIND_WIDGET"

    .line 639
    .line 640
    .line 641
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    const-string v9, "appWidgetId"

    .line 645
    .line 646
    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    .line 648
    .line 649
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 650
    .line 651
    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 652
    .line 653
    invoke-virtual {v9}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    .line 654
    .line 655
    .line 656
    move-result-object v9

    .line 657
    invoke-virtual {v1, v7, v9, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 658
    .line 659
    .line 660
    new-instance v7, Landroid/content/Intent;

    .line 661
    .line 662
    const-string/jumbo v9, "com.samsung.android.appwidget.action.APPWIDGET_UNBIND"

    .line 663
    .line 664
    .line 665
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    const-string v9, "appWidgetPackageName"

    .line 669
    .line 670
    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    .line 672
    .line 673
    iget-object v4, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 674
    .line 675
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 676
    .line 677
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    .line 678
    .line 679
    .line 680
    move-result-object v4

    .line 681
    invoke-virtual {v1, v7, v4, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 682
    .line 683
    .line 684
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 685
    .line 686
    .line 687
    goto :goto_c

    .line 688
    :cond_11
    const-string v4, "AppWidgetServiceImpl"

    .line 689
    .line 690
    new-instance v7, Ljava/lang/StringBuilder;

    .line 691
    .line 692
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    .line 694
    .line 695
    const-string v9, "TransactionTooLargeException, failed to remove widget because : (fds == null) = "

    .line 696
    .line 697
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    if-nez v11, :cond_12

    .line 701
    .line 702
    goto :goto_b

    .line 703
    :cond_12
    const/4 v10, 0x0

    .line 704
    :goto_b
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    const-string v9, ", w = "

    .line 708
    .line 709
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v7

    .line 719
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .line 721
    .line 722
    goto :goto_c

    .line 723
    :cond_13
    const-string v4, "AppWidgetServiceImpl"

    .line 724
    .line 725
    const-string v7, "TransactionTooLargeException, App occupied fd are under 64, not kill widget"

    .line 726
    .line 727
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .line 729
    .line 730
    goto :goto_c

    .line 731
    :cond_14
    const/4 v4, 0x0

    .line 732
    iput-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 733
    .line 734
    :goto_c
    const-string v4, "AppWidgetServiceImpl"

    .line 735
    .line 736
    new-instance v7, Ljava/lang/StringBuilder;

    .line 737
    .line 738
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 739
    .line 740
    .line 741
    const-string v8, "Widget host dead: "

    .line 742
    .line 743
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    iget-object v8, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 747
    .line 748
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v7

    .line 755
    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    .line 757
    .line 758
    new-instance v4, Ljava/lang/StringBuilder;

    .line 759
    .line 760
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .line 762
    .line 763
    const-string v7, "Dead host #1 : "

    .line 764
    .line 765
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 769
    .line 770
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    const-string v2, " appWidgetId : "

    .line 774
    .line 775
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    const-string v2, " "

    .line 782
    .line 783
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 787
    .line 788
    .line 789
    const-string v0, " "

    .line 790
    .line 791
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    invoke-virtual {v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    monitor-exit v5

    .line 805
    :cond_15
    :goto_d
    return-void

    .line 806
    :goto_e
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 807
    throw v0

    .line 808
    :goto_f
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 809
    throw v0
.end method

.method public static -$$Nest$monEmergencyModeDisabled(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "AppWidgetServiceImpl"

    .line 5
    .line 6
    const-string/jumbo v1, "onEmergencyModeDisabled().0"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 23
    .line 24
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move v3, v2

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 52
    .line 53
    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 54
    .line 55
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-lez v4, :cond_0

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-virtual {p0, v5, v4, v2, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    or-int/2addr v3, v4

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    if-eqz v3, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 82
    .line 83
    .line 84
    :cond_3
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method

.method public static -$$Nest$monPackageBroadcastReceived(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    if-nez v6, :cond_0

    .line 18
    .line 19
    const-string v0, "AppWidgetServiceImpl"

    .line 20
    .line 21
    const-string v1, "action is null"

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto/16 :goto_16

    .line 27
    .line 28
    :cond_0
    const/4 v7, 0x0

    .line 29
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    sparse-switch v8, :sswitch_data_0

    .line 34
    .line 35
    .line 36
    :goto_0
    move v8, v3

    .line 37
    goto :goto_1

    .line 38
    :sswitch_0
    const-string v8, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 39
    .line 40
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-nez v8, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v8, 0x4

    .line 48
    goto :goto_1

    .line 49
    :sswitch_1
    const-string v8, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 50
    .line 51
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-nez v8, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v8, 0x3

    .line 59
    goto :goto_1

    .line 60
    :sswitch_2
    const-string v8, "android.intent.action.PACKAGES_SUSPENDED"

    .line 61
    .line 62
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v8, 0x2

    .line 70
    goto :goto_1

    .line 71
    :sswitch_3
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 72
    .line 73
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-nez v8, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    move v8, v5

    .line 81
    goto :goto_1

    .line 82
    :sswitch_4
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 83
    .line 84
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-nez v8, :cond_5

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    move v8, v4

    .line 92
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    if-nez v8, :cond_6

    .line 100
    .line 101
    goto/16 :goto_16

    .line 102
    .line 103
    :cond_6
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    if-nez v8, :cond_7

    .line 108
    .line 109
    goto/16 :goto_16

    .line 110
    .line 111
    :cond_7
    new-array v9, v5, [Ljava/lang/String;

    .line 112
    .line 113
    aput-object v8, v9, v4

    .line 114
    .line 115
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    .line 116
    .line 117
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    .line 122
    .line 123
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    move v11, v10

    .line 128
    :goto_2
    move-object v10, v9

    .line 129
    move v9, v8

    .line 130
    move v8, v3

    .line 131
    goto :goto_4

    .line 132
    :pswitch_0
    const-string v8, "android.intent.extra.UID"

    .line 133
    .line 134
    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    move v9, v4

    .line 139
    move v11, v9

    .line 140
    move-object v10, v7

    .line 141
    goto :goto_4

    .line 142
    :pswitch_1
    const-string v8, "android.intent.extra.changed_package_list"

    .line 143
    .line 144
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    move v8, v3

    .line 149
    move v11, v5

    .line 150
    move-object v10, v9

    .line 151
    move v9, v4

    .line 152
    goto :goto_4

    .line 153
    :pswitch_2
    move v8, v5

    .line 154
    goto :goto_3

    .line 155
    :pswitch_3
    move v8, v4

    .line 156
    :goto_3
    const-string v9, "android.intent.extra.changed_package_list"

    .line 157
    .line 158
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    move v11, v4

    .line 163
    goto :goto_2

    .line 164
    :goto_4
    if-eqz v10, :cond_8

    .line 165
    .line 166
    array-length v12, v10

    .line 167
    if-nez v12, :cond_9

    .line 168
    .line 169
    :cond_8
    if-ne v8, v3, :cond_9

    .line 170
    .line 171
    goto/16 :goto_16

    .line 172
    .line 173
    :cond_9
    iget-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 174
    .line 175
    monitor-enter v12

    .line 176
    :try_start_0
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 177
    .line 178
    invoke-virtual {v13, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    if-eqz v13, :cond_22

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    if-eqz v13, :cond_a

    .line 189
    .line 190
    goto/16 :goto_15

    .line 191
    .line 192
    :cond_a
    invoke-virtual {v0, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 193
    .line 194
    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-nez v9, :cond_12

    .line 200
    .line 201
    if-eqz v11, :cond_b

    .line 202
    .line 203
    goto/16 :goto_8

    .line 204
    .line 205
    :cond_b
    if-eq v8, v3, :cond_c

    .line 206
    .line 207
    invoke-virtual {v0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearPreviewsForUidLocked(I)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    goto/16 :goto_11

    .line 212
    .line 213
    :catchall_0
    move-exception v0

    .line 214
    goto/16 :goto_17

    .line 215
    .line 216
    :cond_c
    if-eqz v1, :cond_d

    .line 217
    .line 218
    const-string v3, "android.intent.extra.REPLACING"

    .line 219
    .line 220
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_d

    .line 225
    .line 226
    move v3, v5

    .line 227
    goto :goto_5

    .line 228
    :cond_d
    move v3, v4

    .line 229
    :goto_5
    if-eqz v1, :cond_e

    .line 230
    .line 231
    const-string v6, "android.intent.extra.ARCHIVAL"

    .line 232
    .line 233
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-eqz v6, :cond_e

    .line 238
    .line 239
    move v6, v5

    .line 240
    goto :goto_6

    .line 241
    :cond_e
    move v6, v4

    .line 242
    :goto_6
    if-eqz v1, :cond_f

    .line 243
    .line 244
    if-eqz v3, :cond_f

    .line 245
    .line 246
    if-eqz v3, :cond_1f

    .line 247
    .line 248
    if-eqz v6, :cond_1f

    .line 249
    .line 250
    :cond_f
    array-length v7, v10

    .line 251
    move v8, v4

    .line 252
    :goto_7
    if-ge v4, v7, :cond_11

    .line 253
    .line 254
    aget-object v9, v10, v4

    .line 255
    .line 256
    sget-boolean v11, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 257
    .line 258
    if-eqz v11, :cond_10

    .line 259
    .line 260
    const-string v11, "AppWidgetServiceImpl"

    .line 261
    .line 262
    new-instance v13, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string/jumbo v14, "calling removeHostsAndProvidersForPackageLocked() because package removed permanently. extras="

    .line 268
    .line 269
    .line 270
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v14, " isReplacing="

    .line 277
    .line 278
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v14, " isArchival="

    .line 285
    .line 286
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v13

    .line 296
    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    :cond_10
    invoke-virtual {v0, v2, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeHostsAndProvidersForPackageLocked(ILjava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    or-int/2addr v8, v9

    .line 304
    add-int/2addr v4, v5

    .line 305
    goto :goto_7

    .line 306
    :cond_11
    move v4, v8

    .line 307
    goto/16 :goto_11

    .line 308
    .line 309
    :cond_12
    :goto_8
    if-eqz v9, :cond_14

    .line 310
    .line 311
    if-eqz v1, :cond_13

    .line 312
    .line 313
    const-string v8, "android.intent.extra.REPLACING"

    .line 314
    .line 315
    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-nez v1, :cond_14

    .line 320
    .line 321
    :cond_13
    move v1, v5

    .line 322
    goto :goto_9

    .line 323
    :cond_14
    move v1, v4

    .line 324
    :goto_9
    array-length v8, v10

    .line 325
    move v11, v4

    .line 326
    move v13, v11

    .line 327
    :goto_a
    if-ge v11, v8, :cond_1e

    .line 328
    .line 329
    aget-object v14, v10, v11

    .line 330
    .line 331
    const-string v15, "AppWidgetServiceImpl"

    .line 332
    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v5, "Received broadcast: "

    .line 339
    .line 340
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v5, ", Updates all providers with "

    .line 347
    .line 348
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v5, ", userId: "

    .line 355
    .line 356
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSkipPackageName:Ljava/lang/String;

    .line 370
    .line 371
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    if-nez v3, :cond_16

    .line 376
    .line 377
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSkipPackageName:Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-eqz v3, :cond_16

    .line 384
    .line 385
    if-nez v9, :cond_15

    .line 386
    .line 387
    const-string v3, "AppWidgetServiceImpl"

    .line 388
    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .line 393
    .line 394
    const-string v14, "Skip Update onProvider changed "

    .line 395
    .line 396
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSkipPackageName:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    iput-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSkipPackageName:Ljava/lang/String;

    .line 412
    .line 413
    move-object v15, v10

    .line 414
    move/from16 p1, v11

    .line 415
    .line 416
    const/4 v3, 0x1

    .line 417
    const/4 v10, -0x1

    .line 418
    goto/16 :goto_10

    .line 419
    .line 420
    :cond_15
    const-string v3, "AppWidgetServiceImpl"

    .line 421
    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    const-string v15, "Cancel skip update onProvider changed because of it is added"

    .line 428
    .line 429
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSkipPackageName:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    :cond_16
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 445
    .line 446
    if-eqz v3, :cond_19

    .line 447
    .line 448
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 449
    .line 450
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 455
    .line 456
    .line 457
    move-result v5

    .line 458
    if-eqz v5, :cond_19

    .line 459
    .line 460
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 465
    .line 466
    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 467
    .line 468
    if-eqz v15, :cond_18

    .line 469
    .line 470
    iget-object v15, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 471
    .line 472
    if-eqz v15, :cond_18

    .line 473
    .line 474
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v15

    .line 478
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v15

    .line 482
    if-eqz v15, :cond_18

    .line 483
    .line 484
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 485
    .line 486
    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 487
    .line 488
    invoke-virtual {v15, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->getOrCreateRecord(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    .line 489
    .line 490
    .line 491
    move-result-object v7

    .line 492
    if-eqz v7, :cond_18

    .line 493
    .line 494
    move-object v15, v10

    .line 495
    move/from16 p1, v11

    .line 496
    .line 497
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 498
    .line 499
    .line 500
    move-result-wide v10

    .line 501
    iput v4, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 502
    .line 503
    iput-wide v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    .line 504
    .line 505
    if-eqz v9, :cond_17

    .line 506
    .line 507
    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 508
    .line 509
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 510
    .line 511
    .line 512
    move-result v7

    .line 513
    if-lez v7, :cond_17

    .line 514
    .line 515
    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 516
    .line 517
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->updateTemplatePreviewCategoriesLocked()V

    .line 521
    .line 522
    .line 523
    :cond_17
    const-string v5, "AppWidgetServiceImpl"

    .line 524
    .line 525
    new-instance v7, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    .line 530
    const-string v10, "Template widget preview\'s records are cleared because of package "

    .line 531
    .line 532
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const-string v10, " changed"

    .line 539
    .line 540
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .line 549
    .line 550
    goto :goto_c

    .line 551
    :cond_18
    move-object v15, v10

    .line 552
    move/from16 p1, v11

    .line 553
    .line 554
    :goto_c
    move/from16 v11, p1

    .line 555
    .line 556
    move-object v10, v15

    .line 557
    const/4 v7, 0x0

    .line 558
    goto :goto_b

    .line 559
    :cond_19
    move-object v15, v10

    .line 560
    move/from16 p1, v11

    .line 561
    .line 562
    move-object v3, v7

    .line 563
    invoke-virtual {v0, v14, v3, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    .line 564
    .line 565
    .line 566
    move-result v5

    .line 567
    or-int/2addr v13, v5

    .line 568
    if-nez v1, :cond_1c

    .line 569
    .line 570
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 571
    .line 572
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 577
    .line 578
    .line 579
    move-result v7

    .line 580
    if-eqz v7, :cond_1c

    .line 581
    .line 582
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v7

    .line 586
    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 587
    .line 588
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 589
    .line 590
    if-eqz v7, :cond_1b

    .line 591
    .line 592
    iget-object v10, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 593
    .line 594
    if-eqz v10, :cond_1b

    .line 595
    .line 596
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v10

    .line 600
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v10

    .line 604
    if-eqz v10, :cond_1b

    .line 605
    .line 606
    if-eqz v9, :cond_1a

    .line 607
    .line 608
    const/4 v10, 0x1

    .line 609
    iput v10, v7, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semAppWidgeAdditionOptions:I

    .line 610
    .line 611
    const/4 v10, -0x1

    .line 612
    goto :goto_e

    .line 613
    :cond_1a
    const/4 v10, -0x1

    .line 614
    iput v10, v7, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semAppWidgeAdditionOptions:I

    .line 615
    .line 616
    :goto_e
    const-string v11, "AppWidgetServiceImpl"

    .line 617
    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .line 622
    .line 623
    const-string/jumbo v4, "semAdditional Options: "

    .line 624
    .line 625
    .line 626
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    iget v4, v7, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semAppWidgeAdditionOptions:I

    .line 630
    .line 631
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .line 640
    .line 641
    goto :goto_f

    .line 642
    :cond_1b
    const/4 v10, -0x1

    .line 643
    :goto_f
    const/4 v3, 0x0

    .line 644
    const/4 v4, 0x0

    .line 645
    goto :goto_d

    .line 646
    :cond_1c
    const/4 v10, -0x1

    .line 647
    if-eqz v1, :cond_1d

    .line 648
    .line 649
    if-nez v2, :cond_1d

    .line 650
    .line 651
    invoke-virtual {v0, v2, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(ILjava/lang/String;)I

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    if-ltz v3, :cond_1d

    .line 656
    .line 657
    invoke-virtual {v0, v3, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->resolveHostUidLocked(ILjava/lang/String;)V

    .line 658
    .line 659
    .line 660
    :cond_1d
    const/4 v3, 0x1

    .line 661
    :goto_10
    add-int/lit8 v11, p1, 0x1

    .line 662
    .line 663
    move v5, v3

    .line 664
    move v3, v10

    .line 665
    move-object v10, v15

    .line 666
    const/4 v4, 0x0

    .line 667
    const/4 v7, 0x0

    .line 668
    goto/16 :goto_a

    .line 669
    .line 670
    :cond_1e
    move v4, v13

    .line 671
    :cond_1f
    :goto_11
    if-eqz v4, :cond_21

    .line 672
    .line 673
    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 677
    .line 678
    .line 679
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 680
    .line 681
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 682
    .line 683
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 684
    .line 685
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :try_start_1
    iget-boolean v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mHasSystemRestoreFinished:Z

    .line 687
    .line 688
    if-eqz v3, :cond_20

    .line 689
    .line 690
    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->maybeSendWidgetRestoreBroadcastsLocked(I)V

    .line 691
    .line 692
    .line 693
    goto :goto_12

    .line 694
    :catchall_1
    move-exception v0

    .line 695
    goto :goto_13

    .line 696
    :cond_20
    :goto_12
    monitor-exit v1

    .line 697
    goto :goto_14

    .line 698
    :goto_13
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 699
    :try_start_2
    throw v0

    .line 700
    :cond_21
    :goto_14
    monitor-exit v12

    .line 701
    goto :goto_16

    .line 702
    :cond_22
    :goto_15
    monitor-exit v12

    .line 703
    :goto_16
    return-void

    .line 704
    :goto_17
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 705
    throw v0

    .line 706
    nop

    .line 707
    :sswitch_data_0
    .sparse-switch
        -0x53ae571d -> :sswitch_4
        -0x4fc097e4 -> :sswitch_3
        -0x3bb3e592 -> :sswitch_2
        0xff13fb5 -> :sswitch_1
        0x4cef8b35 -> :sswitch_0
    .end sparse-switch

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static -$$Nest$msaveStateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .locals 7

    .line 1
    const-string v0, "AppWidgetServiceImpl"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->tagProvidersAndHosts()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    array-length v1, p1

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isMaintenanceModeUser(Landroid/content/pm/UserInfo;)Z

    .line 23
    .line 24
    .line 25
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v3

    .line 28
    const-string v4, "Couldn\'t get user info"

    .line 29
    .line 30
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    move v3, v2

    .line 34
    :goto_0
    if-ge v2, v1, :cond_2

    .line 35
    .line 36
    aget v4, p1, v2

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const/16 v5, 0x4d

    .line 41
    .line 42
    if-eq v4, v5, :cond_0

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    :try_start_1
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {p0, v6, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeProfileStateToStreamLocked(Ljava/io/OutputStream;I)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_1
    move-exception v4

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v5, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 66
    .line 67
    .line 68
    const-string v4, "Failed to save state, restoring backup."

    .line 69
    .line 70
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v6, "Failed open state file for write: "

    .line 77
    .line 78
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    return-void
.end method

.method public static -$$Nest$mupdateWidgetPackageSuspensionMaskedState(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "android.intent.extra.changed_package_list"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-ge v2, v1, :cond_5

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    const-string v3, "AppWidgetServiceImpl"

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v5, "updateWidgetPackageSuspensionMaskedState provider is null. i:"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, " size:"

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-ne v4, p3, :cond_4

    .line 84
    .line 85
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 86
    .line 87
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 88
    .line 89
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-boolean v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 101
    .line 102
    iput-boolean p2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 103
    .line 104
    if-eq p2, v4, :cond_4

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    invoke-virtual {p0, v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    monitor-exit p1

    .line 124
    :goto_2
    return-void

    .line 125
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x1b7740

    .line 10
    .line 11
    .line 12
    :goto_0
    sput v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    .line 21
    const-wide/16 v0, 0x1

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    sput-wide v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEFAULT_GENERATED_PREVIEW_RESET_INTERVAL_MS:J

    .line 32
    .line 33
    const/4 v0, 0x7

    .line 34
    new-array v0, v0, [I

    .line 35
    .line 36
    fill-array-data v0, :array_0

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->APPWIDGET_WIDGET_SUPPORTED_SIZES:[I

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSkipPackageName:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v0, Landroid/util/ArraySet;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 59
    .line 60
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseBooleanArray;

    .line 66
    .line 67
    new-instance v0, Ljava/lang/Object;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackagesLock:Ljava/lang/Object;

    .line 73
    .line 74
    new-instance v0, Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    .line 80
    .line 81
    new-instance v0, Landroid/util/SparseIntArray;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 87
    .line 88
    new-instance v0, Ljava/io/File;

    .line 89
    .line 90
    const-string v1, "/proc/self/fd"

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mFdFile:Ljava/io/File;

    .line 96
    .line 97
    new-instance v0, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageToPidMap:Ljava/util/HashMap;

    .line 103
    .line 104
    new-instance v0, Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPidToPackageMap:Ljava/util/HashMap;

    .line 110
    .line 111
    new-instance v0, Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLastSeqNumber:Ljava/util/HashMap;

    .line 117
    .line 118
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    .line 119
    .line 120
    iput-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    .line 121
    .line 122
    const/4 v0, 0x7

    .line 123
    new-array v1, v0, [Ljava/lang/String;

    .line 124
    .line 125
    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistory:[Ljava/lang/String;

    .line 126
    .line 127
    const/16 v1, 0x64

    .line 128
    .line 129
    new-array v1, v1, [Ljava/lang/String;

    .line 130
    .line 131
    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistory:[Ljava/lang/String;

    .line 132
    .line 133
    new-array v0, v0, [Ljava/lang/String;

    .line 134
    .line 135
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistory:[Ljava/lang/String;

    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistoryIdx:I

    .line 139
    .line 140
    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistoryIndex:I

    .line 141
    .line 142
    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistoryIndex:I

    .line 143
    .line 144
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    return-void
.end method

.method public static createPartialProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    move p2, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move p2, v3

    .line 32
    :goto_0
    const-string v4, "android.appwidget.provider"

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v2, v3

    .line 42
    :goto_1
    or-int/2addr p2, v2

    .line 43
    if-eqz p2, :cond_4

    .line 44
    .line 45
    new-instance p2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 46
    .line 47
    invoke-direct {p2}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 51
    .line 52
    iput-object p0, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 53
    .line 54
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 55
    .line 56
    iput-object p0, p2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 57
    .line 58
    sget-boolean p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_3
    return-object p2

    .line 66
    :cond_4
    return-object v1
.end method

.method public static ensureTemplateWidgetPropertyCombinationIsValid(II)V
    .locals 1

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    and-int/lit8 v0, p1, 0x2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, " is not a valid widget category"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->APPWIDGET_WIDGET_SUPPORTED_SIZES:[I

    .line 23
    .line 24
    array-length p1, p1

    .line 25
    const/4 v0, 0x1

    .line 26
    shl-int p1, v0, p1

    .line 27
    .line 28
    sub-int/2addr p1, v0

    .line 29
    if-lez p0, :cond_2

    .line 30
    .line 31
    if-gt p0, p1, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v0, " is not a valid widget category combination"

    .line 37
    .line 38
    invoke-static {p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public static ensureWidgetCategoryCombinationIsValid(I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p0, -0x8

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, " is not a valid widget category combination"

    .line 9
    .line 10
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public static getSavedStateFile(I)Landroid/util/AtomicFile;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "appwidgets.xml"

    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 31
    .line 32
    .line 33
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 34
    .line 35
    const-string v0, "/data/system/appwidgets.xml"

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    new-instance p0, Landroid/util/AtomicFile;

    .line 44
    .line 45
    invoke-direct {p0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 46
    .line 47
    .line 48
    return-object p0
.end method

.method public static getWidgetIds(Ljava/util/ArrayList;)[I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 15
    .line 16
    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 17
    .line 18
    aput v3, v1, v2

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v1
.end method

.method public static parseAppWidgetProviderInfo(Landroid/content/Context;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 12

    .line 1
    const-string v0, " for user "

    .line 2
    .line 3
    const-string v1, "AppWidgetServiceImpl"

    .line 4
    .line 5
    const-string v2, "No "

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p2, p0, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 13
    .line 14
    .line 15
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, " meta-data for AppWidget provider \'"

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 p2, 0x27

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    :try_start_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto/16 :goto_e

    .line 54
    .line 55
    :cond_0
    :goto_0
    return-object v3

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto/16 :goto_c

    .line 58
    .line 59
    :cond_1
    :try_start_3
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v5, 0x2

    .line 68
    const/4 v6, 0x1

    .line 69
    if-eq v2, v6, :cond_2

    .line 70
    .line 71
    if-eq v2, v5, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v7, "appwidget-provider"

    .line 79
    .line 80
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string p2, "Meta-data does not start with appwidget-provider tag for AppWidget provider "

    .line 92
    .line 93
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 97
    .line 98
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 105
    .line 106
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    .line 115
    .line 116
    :try_start_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 117
    .line 118
    .line 119
    return-object v3

    .line 120
    :cond_3
    :try_start_5
    new-instance v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 121
    .line 122
    invoke-direct {v2}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 123
    .line 124
    .line 125
    iget-object v7, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 126
    .line 127
    iput-object v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 128
    .line 129
    iput-object p2, v2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 130
    .line 131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 132
    .line 133
    .line 134
    move-result-wide v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    :try_start_6
    iget v9, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 136
    .line 137
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    iget-object v10, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 142
    .line 143
    const/4 v11, 0x0

    .line 144
    invoke-virtual {p0, v10, v11, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-virtual {p0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 152
    :try_start_7
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    .line 154
    .line 155
    sget-object v7, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    .line 156
    .line 157
    invoke-virtual {v9, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    if-eqz v8, :cond_4

    .line 166
    .line 167
    iget v8, v8, Landroid/util/TypedValue;->data:I

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_4
    move v8, v11

    .line 171
    :goto_2
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 172
    .line 173
    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    if-eqz v8, :cond_5

    .line 178
    .line 179
    iget v8, v8, Landroid/util/TypedValue;->data:I

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    move v8, v11

    .line 183
    :goto_3
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 184
    .line 185
    const/16 v8, 0x9

    .line 186
    .line 187
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    if-eqz v8, :cond_6

    .line 192
    .line 193
    iget v8, v8, Landroid/util/TypedValue;->data:I

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_6
    iget v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 197
    .line 198
    :goto_4
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 199
    .line 200
    const/16 v8, 0xa

    .line 201
    .line 202
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    if-eqz v8, :cond_7

    .line 207
    .line 208
    iget v8, v8, Landroid/util/TypedValue;->data:I

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_7
    iget v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 212
    .line 213
    :goto_5
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 214
    .line 215
    const/16 v8, 0xf

    .line 216
    .line 217
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    if-eqz v8, :cond_8

    .line 222
    .line 223
    iget v8, v8, Landroid/util/TypedValue;->data:I

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_8
    move v8, v11

    .line 227
    :goto_6
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    .line 228
    .line 229
    const/16 v8, 0x10

    .line 230
    .line 231
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    if-eqz v8, :cond_9

    .line 236
    .line 237
    iget v8, v8, Landroid/util/TypedValue;->data:I

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_9
    move v8, v11

    .line 241
    :goto_7
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    .line 242
    .line 243
    const/16 v8, 0x11

    .line 244
    .line 245
    invoke-virtual {v7, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    .line 250
    .line 251
    const/16 v8, 0x12

    .line 252
    .line 253
    invoke-virtual {v7, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    .line 258
    .line 259
    const/4 v8, 0x3

    .line 260
    invoke-virtual {v7, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 265
    .line 266
    const/4 v8, 0x4

    .line 267
    invoke-virtual {v7, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 272
    .line 273
    const/16 v8, 0xb

    .line 274
    .line 275
    invoke-virtual {v7, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 276
    .line 277
    .line 278
    move-result v8

    .line 279
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 280
    .line 281
    const/4 v8, 0x5

    .line 282
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    if-eqz v8, :cond_a

    .line 287
    .line 288
    new-instance v9, Landroid/content/ComponentName;

    .line 289
    .line 290
    iget-object v10, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 291
    .line 292
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    invoke-direct {v9, v10, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iput-object v9, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 300
    .line 301
    :cond_a
    invoke-virtual {p2, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    iput-object p0, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    .line 312
    .line 313
    .line 314
    move-result p0

    .line 315
    iput p0, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 316
    .line 317
    const/4 p0, 0x6

    .line 318
    invoke-virtual {v7, p0, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 319
    .line 320
    .line 321
    move-result p0

    .line 322
    iput p0, v2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 323
    .line 324
    const/16 p0, 0xe

    .line 325
    .line 326
    invoke-virtual {v7, p0, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 327
    .line 328
    .line 329
    move-result p0

    .line 330
    iput p0, v2, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    .line 331
    .line 332
    const/4 p0, 0x7

    .line 333
    const/4 v8, -0x1

    .line 334
    invoke-virtual {v7, p0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 335
    .line 336
    .line 337
    move-result p0

    .line 338
    iput p0, v2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 339
    .line 340
    const/16 p0, 0x8

    .line 341
    .line 342
    invoke-virtual {v7, p0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 343
    .line 344
    .line 345
    move-result p0

    .line 346
    iput p0, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 347
    .line 348
    const/16 p0, 0xc

    .line 349
    .line 350
    invoke-virtual {v7, p0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 351
    .line 352
    .line 353
    move-result p0

    .line 354
    iput p0, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 355
    .line 356
    iget-object p0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 357
    .line 358
    const-string/jumbo p2, "widgetStyle"

    .line 359
    .line 360
    .line 361
    if-eqz p0, :cond_c

    .line 362
    .line 363
    :try_start_8
    const-string v8, "android.appwidget.provider.semConfigureActivity"

    .line 364
    .line 365
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    if-eqz v8, :cond_b

    .line 370
    .line 371
    new-instance v9, Landroid/content/ComponentName;

    .line 372
    .line 373
    iget-object v10, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 374
    .line 375
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v10

    .line 379
    invoke-direct {v9, v10, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iput-object v9, v2, Landroid/appwidget/AppWidgetProviderInfo;->semConfigure:Landroid/content/ComponentName;

    .line 383
    .line 384
    :cond_b
    sget-object v8, Landroid/appwidget/AppWidgetManager;->SEM_APPWIDGET_STYLE_COMPLICATION:Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result p0

    .line 394
    if-eqz p0, :cond_c

    .line 395
    .line 396
    move p0, v6

    .line 397
    goto :goto_8

    .line 398
    :cond_c
    move p0, v11

    .line 399
    :goto_8
    const/16 v8, 0xd

    .line 400
    .line 401
    invoke-virtual {v7, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 402
    .line 403
    .line 404
    move-result v8

    .line 405
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 406
    .line 407
    invoke-virtual {v7, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 408
    .line 409
    .line 410
    move-result v8

    .line 411
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    .line 412
    .line 413
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 414
    .line 415
    .line 416
    if-nez p0, :cond_10

    .line 417
    .line 418
    move v7, v11

    .line 419
    :goto_9
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 420
    .line 421
    .line 422
    move-result v8

    .line 423
    if-ge v7, v8, :cond_10

    .line 424
    .line 425
    invoke-interface {p3, v7}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v9

    .line 433
    if-eqz v9, :cond_d

    .line 434
    .line 435
    invoke-interface {p3, v7, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    .line 436
    .line 437
    .line 438
    move-result v8

    .line 439
    if-ne v8, v5, :cond_f

    .line 440
    .line 441
    :goto_a
    move p0, v6

    .line 442
    goto :goto_b

    .line 443
    :cond_d
    const-string/jumbo v9, "targetHost"

    .line 444
    .line 445
    .line 446
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v9

    .line 450
    if-eqz v9, :cond_e

    .line 451
    .line 452
    invoke-interface {p3, v7, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    .line 453
    .line 454
    .line 455
    move-result v8

    .line 456
    and-int/2addr v8, v6

    .line 457
    if-nez v8, :cond_f

    .line 458
    .line 459
    goto :goto_a

    .line 460
    :cond_e
    const-string/jumbo v9, "previewRecordReset"

    .line 461
    .line 462
    .line 463
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v8

    .line 467
    if-eqz v8, :cond_f

    .line 468
    .line 469
    invoke-interface {p3, v7, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    .line 470
    .line 471
    .line 472
    move-result v8

    .line 473
    iput v8, v2, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semPreviewRecordResetStates:I

    .line 474
    .line 475
    :cond_f
    :goto_b
    add-int/lit8 v7, v7, 0x1

    .line 476
    .line 477
    goto :goto_9

    .line 478
    :cond_10
    if-eqz p0, :cond_11

    .line 479
    .line 480
    const/16 p0, 0x2000

    .line 481
    .line 482
    iput p0, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 483
    .line 484
    :cond_11
    :try_start_9
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0

    .line 485
    .line 486
    .line 487
    return-object v2

    .line 488
    :catchall_1
    move-exception p0

    .line 489
    :try_start_a
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 490
    .line 491
    .line 492
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 493
    :goto_c
    if-eqz v4, :cond_12

    .line 494
    .line 495
    :try_start_b
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 496
    .line 497
    .line 498
    goto :goto_d

    .line 499
    :catchall_2
    move-exception p2

    .line 500
    :try_start_c
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 501
    .line 502
    .line 503
    :cond_12
    :goto_d
    throw p0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0

    .line 504
    :goto_e
    new-instance p2, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    const-string p3, "XML parsing failed for AppWidget provider "

    .line 507
    .line 508
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    iget-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 512
    .line 513
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 520
    .line 521
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    .line 530
    .line 531
    return-object v3
.end method

.method public static parseWidgetIdOptions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;
    .locals 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string/jumbo v2, "restore_completed"

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-string v2, "appWidgetRestoreCompleted"

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const-string/jumbo v2, "min_width"

    .line 24
    .line 25
    .line 26
    const/4 v3, -0x1

    .line 27
    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eq v2, v3, :cond_1

    .line 32
    .line 33
    const-string v4, "appWidgetMinWidth"

    .line 34
    .line 35
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    const-string/jumbo v2, "min_height"

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eq v2, v3, :cond_2

    .line 46
    .line 47
    const-string v4, "appWidgetMinHeight"

    .line 48
    .line 49
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    const-string/jumbo v2, "max_width"

    .line 53
    .line 54
    .line 55
    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eq v2, v3, :cond_3

    .line 60
    .line 61
    const-string v4, "appWidgetMaxWidth"

    .line 62
    .line 63
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    const-string/jumbo v2, "max_height"

    .line 67
    .line 68
    .line 69
    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eq v2, v3, :cond_4

    .line 74
    .line 75
    const-string v4, "appWidgetMaxHeight"

    .line 76
    .line 77
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    :cond_4
    const-string/jumbo v2, "sizes"

    .line 81
    .line 82
    .line 83
    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_5

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    :try_start_0
    const-string v4, ","

    .line 97
    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    new-instance v4, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    invoke-direct {v4, v5}, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-instance v4, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;

    .line 117
    .line 118
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-static {v4}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catch_0
    move-exception v2

    .line 133
    const-string v4, "AppWidgetXmlUtil"

    .line 134
    .line 135
    const-string v5, "Error parsing widget sizes"

    .line 136
    .line 137
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_0
    move-object v2, v1

    .line 141
    :goto_1
    if-eqz v2, :cond_7

    .line 142
    .line 143
    const-string v4, "appWidgetSizes"

    .line 144
    .line 145
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 146
    .line 147
    .line 148
    :cond_7
    const-string/jumbo v2, "host_category"

    .line 149
    .line 150
    .line 151
    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eq v2, v3, :cond_8

    .line 156
    .line 157
    const-string v4, "appWidgetCategory"

    .line 158
    .line 159
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    :cond_8
    const-string/jumbo v2, "column_span"

    .line 163
    .line 164
    .line 165
    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eq v2, v3, :cond_9

    .line 170
    .line 171
    const-string/jumbo v4, "semAppWidgetColumnSpan"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    :cond_9
    const-string/jumbo v2, "row_span"

    .line 178
    .line 179
    .line 180
    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    if-eq p0, v3, :cond_a

    .line 185
    .line 186
    const-string/jumbo v1, "semAppWidgetRowSpan"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    :cond_a
    return-object v0
.end method

.method public static serializeAppWidget(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "g"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 9
    .line 10
    const-string/jumbo v3, "id"

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v2, "rid"

    .line 17
    .line 18
    .line 19
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 20
    .line 21
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    .line 23
    .line 24
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 25
    .line 26
    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 27
    .line 28
    const-string/jumbo v3, "h"

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    .line 33
    .line 34
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    const-string/jumbo v3, "p"

    .line 39
    .line 40
    .line 41
    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 42
    .line 43
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 47
    .line 48
    if-eqz v2, :cond_7

    .line 49
    .line 50
    const-string v3, "appWidgetMinWidth"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 57
    .line 58
    const-string v4, "appWidgetMinHeight"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 65
    .line 66
    const-string v5, "appWidgetMaxWidth"

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    iget-object v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 73
    .line 74
    const-string v6, "appWidgetMaxHeight"

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    const/4 v6, 0x0

    .line 81
    if-lez v2, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move v2, v6

    .line 85
    :goto_0
    const-string/jumbo v7, "min_width"

    .line 86
    .line 87
    .line 88
    invoke-interface {p0, v0, v7, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    .line 90
    .line 91
    if-lez v3, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move v3, v6

    .line 95
    :goto_1
    const-string/jumbo v2, "min_height"

    .line 96
    .line 97
    .line 98
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    .line 100
    .line 101
    if-lez v4, :cond_3

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    move v4, v6

    .line 105
    :goto_2
    const-string/jumbo v2, "max_width"

    .line 106
    .line 107
    .line 108
    invoke-interface {p0, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    .line 110
    .line 111
    if-lez v5, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    move v5, v6

    .line 115
    :goto_3
    const-string/jumbo v2, "max_height"

    .line 116
    .line 117
    .line 118
    invoke-interface {p0, v0, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    .line 120
    .line 121
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 122
    .line 123
    const-string v3, "appWidgetCategory"

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    const-string/jumbo v3, "host_category"

    .line 130
    .line 131
    .line 132
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    .line 134
    .line 135
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 136
    .line 137
    const-string v3, "appWidgetSizes"

    .line 138
    .line 139
    const-class v4, Landroid/util/SizeF;

    .line 140
    .line 141
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-eqz v2, :cond_5

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    new-instance v3, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda0;

    .line 152
    .line 153
    const/4 v4, 0x1

    .line 154
    invoke-direct {v3, v4}, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const-string v3, ","

    .line 162
    .line 163
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    check-cast v2, Ljava/lang/String;

    .line 172
    .line 173
    const-string/jumbo v3, "sizes"

    .line 174
    .line 175
    .line 176
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    .line 178
    .line 179
    :cond_5
    if-eqz p2, :cond_6

    .line 180
    .line 181
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 182
    .line 183
    const-string v2, "appWidgetRestoreCompleted"

    .line 184
    .line 185
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    const-string/jumbo v2, "restore_completed"

    .line 190
    .line 191
    .line 192
    invoke-interface {p0, v0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    .line 194
    .line 195
    :cond_6
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 196
    .line 197
    const-string/jumbo v2, "semAppWidgetColumnSpan"

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 205
    .line 206
    const-string/jumbo v2, "semAppWidgetRowSpan"

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-lez p2, :cond_7

    .line 214
    .line 215
    if-lez p1, :cond_7

    .line 216
    .line 217
    const-string/jumbo v2, "column_span"

    .line 218
    .line 219
    .line 220
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-interface {p0, v0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    .line 226
    .line 227
    const-string/jumbo p2, "row_span"

    .line 228
    .line 229
    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-interface {p0, v0, p2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    .line 236
    .line 237
    :cond_7
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    .line 239
    .line 240
    return-void
.end method

.method public static serializeHost(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "h"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    const-string/jumbo v3, "pkg"

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 19
    .line 20
    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    .line 21
    .line 22
    const-string/jumbo v3, "id"

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    .line 27
    .line 28
    const-string/jumbo v2, "tag"

    .line 29
    .line 30
    .line 31
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 32
    .line 33
    invoke-interface {p0, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static serializeProvider(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "p"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string/jumbo v3, "pkg"

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    .line 21
    .line 22
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string/jumbo v3, "cl"

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    .line 35
    .line 36
    const-string/jumbo v2, "tag"

    .line 37
    .line 38
    .line 39
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 40
    .line 41
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    .line 43
    .line 44
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    const-string/jumbo v2, "info_tag"

    .line 53
    .line 54
    .line 55
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    .line 59
    .line 60
    :cond_0
    if-eqz p2, :cond_4

    .line 61
    .line 62
    iget-boolean p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->mInfoParsed:Z

    .line 63
    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 67
    .line 68
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const-string/jumbo v2, "min_width"

    .line 72
    .line 73
    .line 74
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 75
    .line 76
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    .line 78
    .line 79
    const-string/jumbo v2, "min_height"

    .line 80
    .line 81
    .line 82
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 83
    .line 84
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    .line 86
    .line 87
    const-string/jumbo v2, "min_resize_width"

    .line 88
    .line 89
    .line 90
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 91
    .line 92
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    .line 94
    .line 95
    const-string/jumbo v2, "min_resize_height"

    .line 96
    .line 97
    .line 98
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 99
    .line 100
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    .line 102
    .line 103
    const-string/jumbo v2, "max_resize_width"

    .line 104
    .line 105
    .line 106
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    .line 107
    .line 108
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    .line 110
    .line 111
    const-string/jumbo v2, "max_resize_height"

    .line 112
    .line 113
    .line 114
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    .line 115
    .line 116
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    .line 118
    .line 119
    const-string/jumbo v2, "target_cell_width"

    .line 120
    .line 121
    .line 122
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    .line 123
    .line 124
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    .line 126
    .line 127
    const-string/jumbo v2, "target_cell_height"

    .line 128
    .line 129
    .line 130
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    .line 131
    .line 132
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    .line 134
    .line 135
    const-string/jumbo v2, "update_period_millis"

    .line 136
    .line 137
    .line 138
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 139
    .line 140
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    .line 142
    .line 143
    const-string/jumbo v2, "initial_layout"

    .line 144
    .line 145
    .line 146
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 147
    .line 148
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    .line 150
    .line 151
    const-string/jumbo v2, "initial_keyguard_layout"

    .line 152
    .line 153
    .line 154
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 155
    .line 156
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    .line 158
    .line 159
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 160
    .line 161
    if-eqz v2, :cond_1

    .line 162
    .line 163
    const-string/jumbo v3, "configure"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    .line 172
    .line 173
    :cond_1
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->semConfigure:Landroid/content/ComponentName;

    .line 174
    .line 175
    if-eqz v2, :cond_2

    .line 176
    .line 177
    const-string/jumbo v3, "semConfigure"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    .line 186
    .line 187
    :cond_2
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 188
    .line 189
    if-eqz v2, :cond_3

    .line 190
    .line 191
    const-string/jumbo v3, "label"

    .line 192
    .line 193
    .line 194
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v3, "Label is empty in "

    .line 201
    .line 202
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 206
    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    const-string v3, "AppWidgetXmlUtil"

    .line 215
    .line 216
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    :goto_0
    const-string/jumbo v2, "icon"

    .line 220
    .line 221
    .line 222
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 223
    .line 224
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    .line 226
    .line 227
    const-string/jumbo v2, "preview_image"

    .line 228
    .line 229
    .line 230
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 231
    .line 232
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    .line 234
    .line 235
    const-string/jumbo v2, "preview_layout"

    .line 236
    .line 237
    .line 238
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    .line 239
    .line 240
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    .line 242
    .line 243
    const-string v2, "auto_advance_view_id"

    .line 244
    .line 245
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 246
    .line 247
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    .line 249
    .line 250
    const-string/jumbo v2, "resize_mode"

    .line 251
    .line 252
    .line 253
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 254
    .line 255
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    .line 257
    .line 258
    const-string/jumbo v2, "widget_category"

    .line 259
    .line 260
    .line 261
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 262
    .line 263
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    .line 265
    .line 266
    const-string/jumbo v2, "widget_features"

    .line 267
    .line 268
    .line 269
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 270
    .line 271
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    .line 273
    .line 274
    const-string/jumbo v2, "description_res"

    .line 275
    .line 276
    .line 277
    iget v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    .line 278
    .line 279
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    .line 281
    .line 282
    const-string/jumbo v2, "provider_inheritance"

    .line 283
    .line 284
    .line 285
    iget-boolean p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->isExtendedFromAppWidgetProvider:Z

    .line 286
    .line 287
    invoke-interface {p0, v0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    .line 289
    .line 290
    const-string/jumbo p2, "os_fingerprint"

    .line 291
    .line 292
    .line 293
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 294
    .line 295
    invoke-interface {p0, v0, p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    .line 297
    .line 298
    :cond_4
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    .line 299
    .line 300
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    if-lez p2, :cond_6

    .line 305
    .line 306
    new-instance v2, Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .line 310
    .line 311
    const/4 v3, 0x0

    .line 312
    :goto_1
    if-ge v3, p2, :cond_5

    .line 313
    .line 314
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    .line 315
    .line 316
    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    add-int/lit8 v3, v3, 0x1

    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_5
    const-string p1, ","

    .line 331
    .line 332
    invoke-static {p1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    const-string/jumbo p2, "pending_deleted_ids"

    .line 337
    .line 338
    .line 339
    invoke-interface {p0, v0, p2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 340
    .line 341
    .line 342
    :cond_6
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    .line 344
    .line 345
    return-void
.end method

.method public static toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v2, 0x5

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const/16 v2, 0xb

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/16 v2, 0xc

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const/16 v2, 0xd

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const/16 v2, 0xe

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    move-object v9, p0

    .line 68
    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v0, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    .line 73
    .line 74
    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public static writeLogToFile(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "/data/log"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    const-string v1, "/data/log/appwidget.log"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    const-wide/32 v3, 0x100000

    .line 41
    .line 42
    .line 43
    cmp-long v1, v1, v3

    .line 44
    .line 45
    if-lez v1, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 50
    :goto_1
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 51
    .line 52
    invoke-direct {v2, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    .line 55
    :try_start_2
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    .line 56
    .line 57
    invoke-direct {v0, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    .line 60
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 64
    .line 65
    .line 66
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .line 68
    .line 69
    :try_start_4
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    .line 71
    .line 72
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 73
    .line 74
    .line 75
    goto :goto_6

    .line 76
    :catch_1
    move-exception p0

    .line 77
    goto :goto_5

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_3

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    :try_start_6
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catchall_2
    move-exception v0

    .line 86
    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :goto_2
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 90
    :goto_3
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :catchall_3
    move-exception v0

    .line 95
    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_4
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 99
    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :goto_6
    return-void
.end method


# virtual methods
.method public final addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 6
    .line 7
    const/high16 v1, 0x40000

    .line 8
    .line 9
    and-int/2addr v0, v1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .line 15
    .line 16
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 17
    .line 18
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 26
    .line 27
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 28
    .line 29
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 32
    .line 33
    invoke-direct {v2, v3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 43
    .line 44
    const/4 v4, -0x1

    .line 45
    invoke-direct {v3, v4, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :cond_1
    invoke-static {v2, p1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createPartialProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-static {}, Landroid/multiuser/Flags;->disablePrivateSpaceItemsOnHome()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->areItemsRestrictedOnHomeScreen()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    return v1

    .line 93
    :cond_2
    if-eqz p1, :cond_5

    .line 94
    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    iget-boolean v0, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    .line 102
    .line 103
    if-nez p0, :cond_4

    .line 104
    .line 105
    iput-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 106
    .line 107
    iput-boolean v1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 108
    .line 109
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setPartialInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 114
    .line 115
    invoke-direct {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setPartialInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 129
    return p0

    .line 130
    :cond_5
    return v1
.end method

.method public final addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "AppWidgetServiceImpl"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "addWidgetLocked() "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "addWidgetLocked, widget: "

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", widget id: "

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", Callers: "

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x7

    .line 50
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 95
    .line 96
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 97
    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 101
    .line 102
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 103
    .line 104
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 105
    .line 106
    invoke-virtual {v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_2

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    const/16 v2, 0xc8

    .line 121
    .line 122
    if-lt v1, v2, :cond_4

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final allocateAppWidgetId(Ljava/lang/String;I)I
    .locals 6

    .line 1
    const-string v0, "Allocated widget id "

    .line 2
    .line 3
    const-string v1, "Instant package "

    .line 4
    .line 5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string v4, "allocateAppWidgetId() "

    .line 12
    .line 13
    invoke-static {v2, v4, v3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v3

    .line 24
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 25
    .line 26
    invoke-virtual {v4, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isInstantAppLocked(ILjava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    const-string p0, "AppWidgetServiceImpl"

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " cannot host app widgets"

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    monitor-exit v3

    .line 55
    const/4 p0, 0x0

    .line 56
    return p0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    const/4 v1, 0x1

    .line 60
    invoke-virtual {p0, v2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 64
    .line 65
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-gez v4, :cond_1

    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 72
    .line 73
    invoke-virtual {v4, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 77
    .line 78
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-gez v4, :cond_2

    .line 83
    .line 84
    move v4, v1

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 87
    .line 88
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    :goto_0
    add-int/2addr v4, v1

    .line 93
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 94
    .line 95
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    .line 97
    .line 98
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 99
    .line 100
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-direct {v1, v5, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 112
    .line 113
    invoke-direct {p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>()V

    .line 114
    .line 115
    .line 116
    iput v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 117
    .line 118
    iput-object p1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 119
    .line 120
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 129
    .line 130
    .line 131
    const-string p0, "AppWidgetServiceImpl"

    .line 132
    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v0, " for host "

    .line 142
    .line 143
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    monitor-exit v3

    .line 159
    return v4

    .line 160
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    throw p0
.end method

.method public final allocateAppWidgetIdWhileBindingLocked(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-gez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v3, 0x0

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 37
    .line 38
    iget v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 39
    .line 40
    if-ne v5, p2, :cond_1

    .line 41
    .line 42
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-ne v4, v0, :cond_1

    .line 51
    .line 52
    move v3, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string/jumbo v1, "ifEmpty"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p4

    .line 61
    if-eqz p4, :cond_6

    .line 62
    .line 63
    const-string p4, "AppWidgetServiceImpl"

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    const-string p0, "Can not allocate ID "

    .line 68
    .line 69
    const-string p1, " #1"

    .line 70
    .line 71
    invoke-static {p2, p0, p1, p4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 76
    .line 77
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-direct {v1, v3, p1, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 89
    .line 90
    invoke-direct {p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>()V

    .line 91
    .line 92
    .line 93
    iput p2, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 94
    .line 95
    iput-object p1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 96
    .line 97
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 103
    .line 104
    .line 105
    iget-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 106
    .line 107
    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-gez p3, :cond_4

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    iget-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 115
    .line 116
    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    :goto_1
    if-ge v2, p2, :cond_5

    .line 121
    .line 122
    iget-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 123
    .line 124
    invoke-virtual {p3, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    .line 126
    .line 127
    :cond_5
    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    .line 128
    .line 129
    if-eqz p0, :cond_6

    .line 130
    .line 131
    const-string p0, "Allocated widget id "

    .line 132
    .line 133
    const-string p3, " for host "

    .line 134
    .line 135
    invoke-static {p2, p0, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-static {p4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :cond_6
    return-void
.end method

.method public final bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    const-string v7, "Bound widget "

    .line 14
    .line 15
    const-string v8, "Bound widget "

    .line 16
    .line 17
    const-string v9, "Can\'t bind to a 3rd party provider in safe mode "

    .line 18
    .line 19
    const-string v10, "No widget provider "

    .line 20
    .line 21
    const-string v11, "Package "

    .line 22
    .line 23
    const-string v12, "Widget id "

    .line 24
    .line 25
    const-string v13, "Bad widget id "

    .line 26
    .line 27
    const-string v14, "appWidgetId : "

    .line 28
    .line 29
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 30
    .line 31
    .line 32
    move-result v15

    .line 33
    const-string v6, "AppWidgetServiceImpl"

    .line 34
    .line 35
    move-object/from16 v16, v7

    .line 36
    .line 37
    const-string v7, "bindAppWidgetId() "

    .line 38
    .line 39
    move-object/from16 v17, v8

    .line 40
    .line 41
    const-string v8, ", from "

    .line 42
    .line 43
    invoke-static {v2, v15, v7, v8, v6}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 47
    .line 48
    invoke-virtual {v6, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 52
    .line 53
    invoke-virtual {v6, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const/4 v7, 0x0

    .line 58
    if-nez v6, :cond_0

    .line 59
    .line 60
    return v7

    .line 61
    :cond_0
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 62
    .line 63
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v6, v3, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(ILjava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_1

    .line 72
    .line 73
    return v7

    .line 74
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    sget-boolean v8, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 79
    .line 80
    sget-object v8, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 81
    .line 82
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object v18, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 86
    .line 87
    monitor-enter v18

    .line 88
    :try_start_0
    iget-object v7, v8, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 89
    .line 90
    invoke-static {v7, v6, v15}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    if-nez v7, :cond_2

    .line 95
    .line 96
    monitor-exit v18

    .line 97
    const/4 v7, 0x0

    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto/16 :goto_6

    .line 101
    .line 102
    :cond_2
    iget-boolean v7, v7, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    .line 103
    .line 104
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    if-nez v7, :cond_3

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    invoke-virtual {v8, v6, v15, v7}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 109
    .line 110
    .line 111
    :cond_3
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 112
    .line 113
    monitor-enter v6

    .line 114
    const/4 v7, 0x1

    .line 115
    :try_start_1
    invoke-virtual {v0, v15, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 116
    .line 117
    .line 118
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 119
    .line 120
    invoke-virtual {v7, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-nez v7, :cond_4

    .line 125
    .line 126
    monitor-exit v6

    .line 127
    const/4 v1, 0x0

    .line 128
    return v1

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    goto/16 :goto_5

    .line 131
    .line 132
    :cond_4
    if-eqz v5, :cond_5

    .line 133
    .line 134
    const-string/jumbo v7, "com.sec.android.app.launcher"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_5

    .line 142
    .line 143
    const-string v7, "appWidgetIdForceAllocMode"

    .line 144
    .line 145
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    const-string v8, "appWidgetIdForceAllocHostId"

    .line 150
    .line 151
    move/from16 v19, v15

    .line 152
    .line 153
    const/4 v15, -0x1

    .line 154
    invoke-virtual {v5, v8, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-eqz v7, :cond_6

    .line 159
    .line 160
    if-lez v8, :cond_6

    .line 161
    .line 162
    const-string v15, "AppWidgetServiceImpl"

    .line 163
    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v14, ".HostId : "

    .line 173
    .line 174
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v14, ".alloc : "

    .line 181
    .line 182
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-static {v15, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v8, v2, v1, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->allocateAppWidgetIdWhileBindingLocked(IILjava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_5
    move/from16 v19, v15

    .line 200
    .line 201
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    invoke-virtual {v0, v2, v5, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    if-nez v5, :cond_7

    .line 210
    .line 211
    const-string v0, "AppWidgetServiceImpl"

    .line 212
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    monitor-exit v6

    .line 229
    const/4 v1, 0x0

    .line 230
    return v1

    .line 231
    :cond_7
    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 232
    .line 233
    if-eqz v7, :cond_8

    .line 234
    .line 235
    const-string v0, "AppWidgetServiceImpl"

    .line 236
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v2, " already bound to: "

    .line 246
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object v2, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 251
    .line 252
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    monitor-exit v6

    .line 265
    const/4 v1, 0x0

    .line 266
    return v1

    .line 267
    :cond_8
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    invoke-virtual {v0, v3, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(ILjava/lang/String;)I

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    if-gez v7, :cond_9

    .line 276
    .line 277
    const-string v0, "AppWidgetServiceImpl"

    .line 278
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v2, " not installed  for profile "

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    monitor-exit v6

    .line 307
    const/4 v1, 0x0

    .line 308
    return v1

    .line 309
    :cond_9
    new-instance v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 310
    .line 311
    invoke-direct {v8, v7, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 315
    .line 316
    .line 317
    move-result-object v7

    .line 318
    if-nez v7, :cond_c

    .line 319
    .line 320
    const-string v1, "AppWidgetServiceImpl"

    .line 321
    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v5, " for profile "

    .line 331
    .line 332
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v3, " providers size:"

    .line 339
    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 344
    .line 345
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 360
    .line 361
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 362
    .line 363
    .line 364
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    const/4 v2, 0x0

    .line 366
    :goto_2
    if-ge v2, v1, :cond_b

    .line 367
    .line 368
    :try_start_2
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 369
    .line 370
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    .line 376
    :try_start_3
    iget-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 377
    .line 378
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 379
    .line 380
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-eqz v5, :cond_a

    .line 385
    .line 386
    const-string v0, "AppWidgetServiceImpl"

    .line 387
    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    const-string v2, "Have Same component but not equals reason:"

    .line 394
    .line 395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    iget-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 399
    .line 400
    invoke-virtual {v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->getFalseReasonForEquals(Ljava/lang/Object;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    monitor-exit v6

    .line 415
    const/4 v1, 0x0

    .line 416
    return v1

    .line 417
    :cond_a
    const/4 v3, 0x1

    .line 418
    add-int/2addr v2, v3

    .line 419
    goto :goto_2

    .line 420
    :catch_0
    move-exception v0

    .line 421
    const-string v1, "AppWidgetServiceImpl"

    .line 422
    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    const-string v3, "Exception on bindAppWidgetId"

    .line 429
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    monitor-exit v6

    .line 444
    const/4 v1, 0x0

    .line 445
    return v1

    .line 446
    :cond_b
    monitor-exit v6

    .line 447
    const/4 v1, 0x0

    .line 448
    return v1

    .line 449
    :cond_c
    iget-boolean v3, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 450
    .line 451
    if-eqz v3, :cond_d

    .line 452
    .line 453
    const-string v0, "AppWidgetServiceImpl"

    .line 454
    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    monitor-exit v6

    .line 471
    const/4 v1, 0x0

    .line 472
    return v1

    .line 473
    :cond_d
    iput-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 474
    .line 475
    if-eqz p5, :cond_f

    .line 476
    .line 477
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    if-ne v3, v4, :cond_e

    .line 486
    .line 487
    invoke-virtual/range {p5 .. p5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    check-cast v3, Landroid/os/Bundle;

    .line 492
    .line 493
    goto :goto_3

    .line 494
    :cond_e
    move-object/from16 v3, p5

    .line 495
    .line 496
    goto :goto_3

    .line 497
    :cond_f
    new-instance v3, Landroid/os/Bundle;

    .line 498
    .line 499
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 500
    .line 501
    .line 502
    :goto_3
    iput-object v3, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 503
    .line 504
    const-string v4, "appWidgetCategory"

    .line 505
    .line 506
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    if-nez v3, :cond_10

    .line 511
    .line 512
    iget-object v3, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 513
    .line 514
    const-string v4, "appWidgetCategory"

    .line 515
    .line 516
    const/4 v8, 0x1

    .line 517
    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 518
    .line 519
    .line 520
    :cond_10
    iget-object v3, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 526
    .line 527
    .line 528
    iget-object v3, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 529
    .line 530
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    const/4 v4, 0x1

    .line 535
    if-ne v3, v4, :cond_11

    .line 536
    .line 537
    filled-new-array/range {p2 .. p2}, [I

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    invoke-virtual {v0, v7, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableAndUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 542
    .line 543
    .line 544
    goto :goto_4

    .line 545
    :cond_11
    filled-new-array/range {p2 .. p2}, [I

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    const/4 v4, 0x0

    .line 550
    const/4 v5, 0x1

    .line 551
    invoke-virtual {v0, v7, v3, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[IZZ)V

    .line 552
    .line 553
    .line 554
    :goto_4
    iget-object v3, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 555
    .line 556
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    invoke-virtual {v0, v7, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 561
    .line 562
    .line 563
    move/from16 v3, v19

    .line 564
    .line 565
    invoke-virtual {v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 566
    .line 567
    .line 568
    const-string v3, "AppWidgetServiceImpl"

    .line 569
    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    .line 571
    .line 572
    move-object/from16 v5, v17

    .line 573
    .line 574
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    const-string v5, " to provider "

    .line 581
    .line 582
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    iget-object v5, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 586
    .line 587
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    .line 598
    .line 599
    if-eqz v0, :cond_12

    .line 600
    .line 601
    const-string v0, "AppWidgetServiceImpl"

    .line 602
    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    .line 604
    .line 605
    move-object/from16 v4, v16

    .line 606
    .line 607
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    const-string v2, " to provider "

    .line 614
    .line 615
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    iget-object v2, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 619
    .line 620
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v2, ", callingPackage = "

    .line 624
    .line 625
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    .line 637
    .line 638
    :cond_12
    monitor-exit v6

    .line 639
    const/4 v0, 0x1

    .line 640
    return v0

    .line 641
    :goto_5
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 642
    throw v0

    .line 643
    :goto_6
    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 644
    throw v0
.end method

.method public final bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;J)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v12, p3

    .line 6
    .line 7
    const-string v2, "Component is null, Intent = "

    .line 8
    .line 9
    const-string v3, "No provider for widget "

    .line 10
    .line 11
    const-string v4, "Bad widget id: "

    .line 12
    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    sget-boolean v6, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 18
    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    const-string v6, "AppWidgetServiceImpl"

    .line 22
    .line 23
    const-string v7, "bindRemoteViewsService() "

    .line 24
    .line 25
    invoke-static {v5, v7, v6}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v13

    .line 31
    const/4 v14, 0x1

    .line 32
    :try_start_0
    invoke-virtual {v0, v5, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    move-object/from16 v6, p1

    .line 40
    .line 41
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 42
    .line 43
    .line 44
    move-result-object v15

    .line 45
    if-eqz v15, :cond_5

    .line 46
    .line 47
    iget-object v4, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/16 v16, 0x0

    .line 56
    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    const-string v0, "AppWidgetServiceImpl"

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    monitor-exit v13

    .line 77
    return v16

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_1
    iget-object v2, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 82
    .line 83
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 102
    .line 103
    iget-object v4, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-virtual {v2, v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceServiceExistsAndRequiresBindRemoteViewsPermission(ILandroid/content/ComponentName;)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 113
    .line 114
    .line 115
    move-result-wide v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v12, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    const-wide/32 v3, 0x2000001

    .line 131
    .line 132
    .line 133
    and-long v8, p7, v3

    .line 134
    .line 135
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 136
    .line 137
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    iget-object v3, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    move-object/from16 v3, p4

    .line 148
    .line 149
    move-object/from16 v4, p5

    .line 150
    .line 151
    move-object/from16 v5, p3

    .line 152
    .line 153
    move-object/from16 v7, p6

    .line 154
    .line 155
    invoke-interface/range {v2 .. v11}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;I)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_2

    .line 160
    .line 161
    iget-object v2, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 162
    .line 163
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 164
    .line 165
    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 166
    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    new-instance v3, Landroid/content/Intent$FilterComparison;

    .line 172
    .line 173
    invoke-direct {v3, v12}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    .line 182
    .line 183
    :try_start_2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    .line 185
    .line 186
    monitor-exit v13

    .line 187
    return v14

    .line 188
    :catchall_1
    move-exception v0

    .line 189
    goto :goto_0

    .line 190
    :catch_0
    :cond_2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :goto_0
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    .line 196
    .line 197
    throw v0

    .line 198
    :goto_1
    monitor-exit v13

    .line 199
    return v16

    .line 200
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 201
    .line 202
    const-string v1, "The taget service not in the same package as the widget provider"

    .line 203
    .line 204
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v0

    .line 208
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 209
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v0

    .line 226
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 227
    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v0

    .line 244
    :goto_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    throw v0
.end method

.method public final cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "cancelBroadcastsLocked() for "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "AppWidgetServiceImpl"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda3;

    .line 32
    .line 33
    invoke-direct {v2, p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/app/PendingIntent;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v1, "cancel ="

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAlarmHistoryLocked(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    iput-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final changeHostIds(Ljava/lang/String;[II)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    array-length v1, p2

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    const/4 v2, 0x1

    .line 20
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 21
    .line 22
    .line 23
    array-length v0, p2

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v0, :cond_2

    .line 26
    .line 27
    aget v3, p2, v2

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-direct {v5, v6, p3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string v6, "AppWidgetServiceImpl"

    .line 53
    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v8, "changeHostIds callingPackage :"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v8, ", appWidgetId : "

    .line 69
    .line 70
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v3, ", host = "

    .line 77
    .line 78
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    if-eqz v5, :cond_1

    .line 92
    .line 93
    iget-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 94
    .line 95
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iput-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 101
    .line 102
    iget-object v3, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto :goto_2

    .line 110
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    monitor-exit v1

    .line 114
    return-void

    .line 115
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_3
    :goto_3
    return-void
.end method

.method public final clearPreviewsForUidLocked(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v2, v0, :cond_3

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 19
    .line 20
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 21
    .line 22
    iget v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 23
    .line 24
    if-ne v5, p1, :cond_2

    .line 25
    .line 26
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->generatedPreviews:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, 0x1

    .line 33
    if-lez v5, :cond_0

    .line 34
    .line 35
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->generatedPreviews:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->updateGeneratedPreviewCategoriesLocked()V

    .line 41
    .line 42
    .line 43
    move v5, v6

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    move v5, v1

    .line 46
    :goto_1
    or-int/2addr v3, v5

    .line 47
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-lez v5, :cond_1

    .line 54
    .line 55
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->updateTemplatePreviewCategoriesLocked()V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    move v6, v1

    .line 65
    :goto_2
    or-int/2addr v3, v6

    .line 66
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 67
    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    const-string v5, "AppWidgetServiceImpl"

    .line 71
    .line 72
    const-string v6, "Reset template widget preview\'s records due to clear of app data"

    .line 73
    .line 74
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 78
    .line 79
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 80
    .line 81
    invoke-virtual {v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->getOrCreateRecord(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v5

    .line 91
    iput v1, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 92
    .line 93
    iput-wide v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    .line 94
    .line 95
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    return v3
.end method

.method public final createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;
    .locals 10

    .line 1
    const-string v0, "Widget not bound "

    .line 2
    .line 3
    const-string v1, "Bad widget id "

    .line 4
    .line 5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const-string v3, "AppWidgetServiceImpl"

    .line 14
    .line 15
    const-string/jumbo v4, "createAppWidgetConfigIntentSender() "

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v4, v3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v3

    .line 29
    const/4 v4, 0x1

    .line 30
    :try_start_0
    invoke-virtual {p0, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    and-int/lit16 p3, p3, -0xc4

    .line 48
    .line 49
    new-instance v6, Landroid/content/Intent;

    .line 50
    .line 51
    const-string v0, "android.appwidget.action.APPWIDGET_CONFIGURE"

    .line 52
    .line 53
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "appWidgetId"

    .line 57
    .line 58
    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 68
    .line 69
    invoke-virtual {v6, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const/4 p3, 0x2

    .line 80
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :try_start_1
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    new-instance v9, Landroid/os/UserHandle;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-direct {v9, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 101
    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    const/high16 v7, 0x54000000

    .line 105
    .line 106
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 111
    .line 112
    .line 113
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    .line 116
    .line 117
    monitor-exit v3

    .line 118
    return-object p0

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_0

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p0

    .line 162
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    throw p0
.end method

.method public final decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/util/Pair;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/HashSet;

    .line 30
    .line 31
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 50
    .line 51
    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 52
    .line 53
    if-nez v2, :cond_0

    .line 54
    .line 55
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Landroid/content/Intent$FilterComparison;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;

    .line 64
    .line 65
    invoke-direct {v2, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    :try_start_0
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 75
    .line 76
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 77
    .line 78
    iget v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 79
    .line 80
    invoke-static {v6}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const v7, 0x2000001

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v1, v2, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_1
    return-void
.end method

.method public final deleteAllHosts()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string/jumbo v2, "deleteAllHosts() "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    const/4 v2, 0x1

    .line 21
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    sub-int/2addr v3, v2

    .line 31
    const/4 v4, 0x0

    .line 32
    :goto_0
    if-ltz v3, :cond_3

    .line 33
    .line 34
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 41
    .line 42
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 43
    .line 44
    iget v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-ne v6, v7, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 53
    .line 54
    .line 55
    sget-boolean v4, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    const-string v4, "AppWidgetServiceImpl"

    .line 60
    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v7, "Deleted host "

    .line 67
    .line 68
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 72
    .line 73
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    :goto_1
    move v4, v2

    .line 87
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    if-eqz v4, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 93
    .line 94
    .line 95
    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    .line 96
    .line 97
    if-eqz p0, :cond_4

    .line 98
    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string/jumbo v2, "deleteAllHosts from "

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v2, ".u"

    .line 118
    .line 119
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeLogToFile(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    monitor-exit v1

    .line 133
    return-void

    .line 134
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    throw p0
.end method

.method public final deleteAppWidgetId(Ljava/lang/String;I)V
    .locals 6

    .line 1
    const-string/jumbo v0, "deleteAppWidgetId "

    .line 2
    .line 3
    .line 4
    const-string v1, "Deleted widget id "

    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    const-string v3, "AppWidgetServiceImpl"

    .line 15
    .line 16
    const-string/jumbo v4, "deleteAppWidgetId() "

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v4, v3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v3

    .line 30
    const/4 v4, 0x1

    .line 31
    :try_start_0
    invoke-virtual {p0, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {p0, p2, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    monitor-exit v3

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 52
    .line 53
    .line 54
    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    const-string p0, "AppWidgetServiceImpl"

    .line 59
    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, " for host "

    .line 69
    .line 70
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 76
    .line 77
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", callingPackage = "

    .line 81
    .line 82
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, ".u"

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeLogToFile(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    monitor-exit v3

    .line 119
    return-void

    .line 120
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    throw p0
.end method

.method public final deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "AppWidgetServiceImpl"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "deleteAppWidgetLocked() "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Provider is not yet set for widget "

    .line 32
    .line 33
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 37
    .line 38
    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 46
    .line 47
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-boolean v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 68
    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    iget-boolean v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 78
    .line 79
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 80
    .line 81
    iget v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 82
    .line 83
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 88
    .line 89
    new-instance v3, Landroid/content/Intent;

    .line 90
    .line 91
    const-string v4, "android.appwidget.action.APPWIDGET_DELETED"

    .line 92
    .line 93
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/high16 v4, 0x10000000

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    const-string v2, "appWidgetId"

    .line 105
    .line 106
    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, v3, v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    .line 115
    .line 116
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 117
    .line 118
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 119
    .line 120
    .line 121
    :goto_1
    iget-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_3

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 130
    .line 131
    .line 132
    iget-boolean p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 133
    .line 134
    if-nez p1, :cond_4

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    iget-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 147
    .line 148
    .line 149
    :cond_4
    :goto_2
    return-void
.end method

.method public final deleteHost(Ljava/lang/String;I)V
    .locals 7

    .line 1
    const-string/jumbo v0, "deleteHost "

    .line 2
    .line 3
    .line 4
    const-string v1, "Deleted host "

    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    const-string v4, "AppWidgetServiceImpl"

    .line 15
    .line 16
    const-string/jumbo v5, "deleteHost() "

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v5, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 23
    .line 24
    invoke-virtual {v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v4

    .line 30
    const/4 v5, 0x1

    .line 31
    :try_start_0
    invoke-virtual {p0, v2, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 32
    .line 33
    .line 34
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-direct {v5, v6, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    monitor-exit v4

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 57
    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    const-string v3, "AppWidgetServiceImpl"

    .line 62
    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 69
    .line 70
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    .line 81
    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p2, " from "

    .line 93
    .line 94
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, ".u"

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeLogToFile(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    monitor-exit v4

    .line 116
    return-void

    .line 117
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw p0
.end method

.method public final deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "AppWidgetServiceImpl"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "deleteHostLocked() "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    :goto_0
    if-ltz v0, :cond_1

    .line 34
    .line 35
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v0, v0, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 56
    .line 57
    const-string/jumbo v0, "deleteHostLocked callbacks : null"

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "Host deleted : "

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "deleteWidgetsLocked() provider="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " userId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "AppWidgetServiceImpl"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    :goto_0
    if-ltz v0, :cond_3

    .line 42
    .line 43
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 50
    .line 51
    const/4 v2, -0x1

    .line 52
    if-eq p2, v2, :cond_1

    .line 53
    .line 54
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-ne p2, v2, :cond_2

    .line 61
    .line 62
    :cond_1
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 70
    .line 71
    .line 72
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 73
    .line 74
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 80
    .line 81
    .line 82
    iput-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 83
    .line 84
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 85
    .line 86
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 87
    .line 88
    .line 89
    iput-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 90
    .line 91
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "AppWidgetServiceImpl"

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    array-length v1, p3

    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    const-string v1, "--proto"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aget-object p3, p3, v2

    .line 22
    .line 23
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProto(Ljava/io/FileDescriptor;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpInternalLocked(Ljava/io/PrintWriter;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final dumpInternalLocked(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "Providers:"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    const-string v3, "  ["

    .line 15
    .line 16
    if-ge v2, v0, :cond_0

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 25
    .line 26
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 27
    .line 28
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 32
    .line 33
    .line 34
    const-string v3, "] provider "

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const-string v3, "    min=("

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v3, v5, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v3, "x"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 61
    .line 62
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 63
    .line 64
    .line 65
    const-string v6, ")   minResize=("

    .line 66
    .line 67
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v6, v5, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 71
    .line 72
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v3, v5, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 81
    .line 82
    .line 83
    const-string v3, ") updatePeriodMillis="

    .line 84
    .line 85
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget v3, v5, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 89
    .line 90
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 91
    .line 92
    .line 93
    const-string v3, " resizeMode="

    .line 94
    .line 95
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget v3, v5, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 99
    .line 100
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 101
    .line 102
    .line 103
    const-string v3, " widgetCategory="

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget v3, v5, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 109
    .line 110
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 111
    .line 112
    .line 113
    const-string v3, " autoAdvanceViewId="

    .line 114
    .line 115
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget v3, v5, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 119
    .line 120
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 121
    .line 122
    .line 123
    const-string v3, " initialLayout=#"

    .line 124
    .line 125
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget v3, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 129
    .line 130
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v3, " initialKeyguardLayout=#"

    .line 138
    .line 139
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget v3, v5, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 143
    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v3, "   zombie="

    .line 152
    .line 153
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-boolean v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 157
    .line 158
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 159
    .line 160
    .line 161
    const-string v3, "    masked locked="

    .line 162
    .line 163
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-boolean v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    .line 167
    .line 168
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 169
    .line 170
    .line 171
    const-string v3, " quiet="

    .line 172
    .line 173
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-boolean v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    .line 177
    .line 178
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 179
    .line 180
    .line 181
    const-string v3, " superLocked="

    .line 182
    .line 183
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-boolean v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuperLocked:Z

    .line 187
    .line 188
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 189
    .line 190
    .line 191
    const-string v3, " suspendedPkg="

    .line 192
    .line 193
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-boolean v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 197
    .line 198
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 199
    .line 200
    .line 201
    const-string v3, " stoppedPkg="

    .line 202
    .line 203
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-boolean v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 207
    .line 208
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 209
    .line 210
    .line 211
    add-int/lit8 v2, v2, 0x1

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    const-string v2, " "

    .line 222
    .line 223
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v4, "Widgets:"

    .line 227
    .line 228
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    move v4, v1

    .line 232
    :goto_1
    if-ge v4, v0, :cond_6

    .line 233
    .line 234
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 241
    .line 242
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 246
    .line 247
    .line 248
    const-string v6, "] id="

    .line 249
    .line 250
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 254
    .line 255
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 256
    .line 257
    .line 258
    const-string v6, "    host="

    .line 259
    .line 260
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 264
    .line 265
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 266
    .line 267
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 271
    .line 272
    if-eqz v6, :cond_1

    .line 273
    .line 274
    const-string v6, "    provider="

    .line 275
    .line 276
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 280
    .line 281
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 282
    .line 283
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    :cond_1
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 287
    .line 288
    if-eqz v6, :cond_2

    .line 289
    .line 290
    const-string v6, "    host.callbacks="

    .line 291
    .line 292
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 296
    .line 297
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 298
    .line 299
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :cond_2
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 303
    .line 304
    if-eqz v6, :cond_3

    .line 305
    .line 306
    const-string v6, "    views="

    .line 307
    .line 308
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 312
    .line 313
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    :cond_3
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 317
    .line 318
    if-eqz v6, :cond_4

    .line 319
    .line 320
    const-string v6, "    options="

    .line 321
    .line 322
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 326
    .line 327
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_4
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->transactionError:Ljava/lang/String;

    .line 331
    .line 332
    if-eqz v6, :cond_5

    .line 333
    .line 334
    const-string v6, "    transactionError="

    .line 335
    .line 336
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->transactionError:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 345
    .line 346
    goto :goto_1

    .line 347
    :cond_6
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string v4, "Hosts:"

    .line 357
    .line 358
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    move v4, v1

    .line 362
    :goto_2
    if-ge v4, v0, :cond_7

    .line 363
    .line 364
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 371
    .line 372
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 376
    .line 377
    .line 378
    const-string v6, "] hostId="

    .line 379
    .line 380
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 384
    .line 385
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    const-string v6, "    callbacks="

    .line 389
    .line 390
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 394
    .line 395
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    const-string v6, "    widgets.size="

    .line 399
    .line 400
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 406
    .line 407
    .line 408
    move-result v6

    .line 409
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 410
    .line 411
    .line 412
    const-string v6, " zombie="

    .line 413
    .line 414
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-boolean v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 418
    .line 419
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 420
    .line 421
    .line 422
    add-int/lit8 v4, v4, 0x1

    .line 423
    .line 424
    goto :goto_2

    .line 425
    :cond_7
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 426
    .line 427
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const-string v4, "Grants:"

    .line 435
    .line 436
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    move v4, v1

    .line 440
    :goto_3
    if-ge v4, v0, :cond_8

    .line 441
    .line 442
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 443
    .line 444
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    check-cast v5, Landroid/util/Pair;

    .line 449
    .line 450
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 454
    .line 455
    .line 456
    const/16 v6, 0x5d

    .line 457
    .line 458
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 459
    .line 460
    .line 461
    const-string v6, " user="

    .line 462
    .line 463
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 467
    .line 468
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    const-string v6, " package="

    .line 472
    .line 473
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v5, Ljava/lang/String;

    .line 479
    .line 480
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    add-int/lit8 v4, v4, 0x1

    .line 484
    .line 485
    goto :goto_3

    .line 486
    :cond_8
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistory:[Ljava/lang/String;

    .line 487
    .line 488
    array-length v0, v0

    .line 489
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    const-string v3, "Host history:"

    .line 493
    .line 494
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    move v3, v1

    .line 498
    :goto_4
    const-string v4, "  "

    .line 499
    .line 500
    if-ge v3, v0, :cond_a

    .line 501
    .line 502
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistory:[Ljava/lang/String;

    .line 503
    .line 504
    aget-object v5, v5, v3

    .line 505
    .line 506
    if-eqz v5, :cond_9

    .line 507
    .line 508
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistory:[Ljava/lang/String;

    .line 512
    .line 513
    aget-object v4, v4, v3

    .line 514
    .line 515
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 519
    .line 520
    goto :goto_4

    .line 521
    :cond_a
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistory:[Ljava/lang/String;

    .line 522
    .line 523
    array-length v0, v0

    .line 524
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    const-string v3, "Appwidget providers history:"

    .line 528
    .line 529
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    move v3, v1

    .line 533
    :goto_5
    if-ge v3, v0, :cond_c

    .line 534
    .line 535
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistory:[Ljava/lang/String;

    .line 536
    .line 537
    aget-object v5, v5, v3

    .line 538
    .line 539
    if-eqz v5, :cond_b

    .line 540
    .line 541
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistory:[Ljava/lang/String;

    .line 545
    .line 546
    aget-object v5, v5, v3

    .line 547
    .line 548
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 552
    .line 553
    goto :goto_5

    .line 554
    :cond_c
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistory:[Ljava/lang/String;

    .line 555
    .line 556
    array-length v0, v0

    .line 557
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    const-string v3, "AppWidget alarm history:"

    .line 561
    .line 562
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    :goto_6
    if-ge v1, v0, :cond_e

    .line 566
    .line 567
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistory:[Ljava/lang/String;

    .line 568
    .line 569
    aget-object v3, v3, v1

    .line 570
    .line 571
    if-eqz v3, :cond_d

    .line 572
    .line 573
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistory:[Ljava/lang/String;

    .line 577
    .line 578
    aget-object v3, v3, v1

    .line 579
    .line 580
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 584
    .line 585
    goto :goto_6

    .line 586
    :cond_e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    const-string v0, "AppWidget restore history:"

    .line 590
    .line 591
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->getLogText()Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    if-nez v0, :cond_f

    .line 599
    .line 600
    const-string v0, ""

    .line 601
    .line 602
    goto :goto_7

    .line 603
    :cond_f
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->getLogText()Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    :goto_7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    const-string v0, "AppWidget last read provider info time:"

    .line 614
    .line 615
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    const-string v0, "    startTime="

    .line 619
    .line 620
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    iget-wide v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorStartTime:J

    .line 624
    .line 625
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 626
    .line 627
    .line 628
    const-string v0, "    endTime="

    .line 629
    .line 630
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    iget-wide v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorEndTime:J

    .line 634
    .line 635
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 636
    .line 637
    .line 638
    const-string v0, "    providerCount="

    .line 639
    .line 640
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorProviderCount:I

    .line 644
    .line 645
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 646
    .line 647
    .line 648
    const-string v0, "    infoLoadTime="

    .line 649
    .line 650
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    iget-wide v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorProviderInfoLoadTime:J

    .line 654
    .line 655
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 656
    .line 657
    .line 658
    return-void
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "dump proto for "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " widgets"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "AppWidgetServiceImpl"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/4 v2, 0x0

    .line 44
    move v3, v2

    .line 45
    :goto_0
    if-ge v3, p1, :cond_5

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 54
    .line 55
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 60
    .line 61
    if-nez v5, :cond_0

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_0
    const-wide v5, 0x20b00000001L

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 75
    .line 76
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    iget-object v8, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 81
    .line 82
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    const/4 v9, 0x1

    .line 87
    if-eq v7, v8, :cond_1

    .line 88
    .line 89
    move v7, v9

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move v7, v2

    .line 92
    :goto_1
    const-wide v10, 0x10800000001L

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 98
    .line 99
    .line 100
    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 101
    .line 102
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 103
    .line 104
    if-nez v7, :cond_2

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    move v9, v2

    .line 108
    :goto_2
    const-wide v7, 0x10800000002L

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 114
    .line 115
    .line 116
    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 117
    .line 118
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 119
    .line 120
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 121
    .line 122
    const-wide v8, 0x10900000003L

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 131
    .line 132
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 133
    .line 134
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 135
    .line 136
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    const-wide v8, 0x10900000004L

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 149
    .line 150
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 151
    .line 152
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 153
    .line 154
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    const-wide v8, 0x10900000005L

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 167
    .line 168
    if-eqz v7, :cond_3

    .line 169
    .line 170
    const-string v8, "appWidgetRestoreCompleted"

    .line 171
    .line 172
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    const-wide v8, 0x1080000000aL

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 182
    .line 183
    .line 184
    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 185
    .line 186
    const-string v8, "appWidgetMinWidth"

    .line 187
    .line 188
    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    const-wide v8, 0x10500000006L

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 198
    .line 199
    .line 200
    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 201
    .line 202
    const-string v8, "appWidgetMinHeight"

    .line 203
    .line 204
    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    const-wide v8, 0x10500000007L

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 214
    .line 215
    .line 216
    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 217
    .line 218
    const-string v8, "appWidgetMaxWidth"

    .line 219
    .line 220
    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    const-wide v8, 0x10500000008L

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 230
    .line 231
    .line 232
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 233
    .line 234
    const-string v7, "appWidgetMaxHeight"

    .line 235
    .line 236
    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    const-wide v7, 0x10500000009L

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 246
    .line 247
    .line 248
    :cond_3
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_4
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string/jumbo v6, "skip dumping widget because host or provider is null: widget.host="

    .line 255
    .line 256
    .line 257
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 261
    .line 262
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v6, " widget.provider="

    .line 266
    .line 267
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 271
    .line 272
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_5
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 287
    .line 288
    .line 289
    return-void
.end method

.method public final ensureGroupStateLoadedLocked(IZ)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    iget-object v1, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v2, "User "

    .line 19
    .line 20
    const-string v3, " must be unlocked for widgets to be available"

    .line 21
    .line 22
    invoke-static {v0, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 31
    .line 32
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v2, "Profile "

    .line 42
    .line 43
    const-string v3, " must have unlocked parent"

    .line 44
    .line 45
    invoke-static {v0, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :cond_3
    :goto_1
    iget-object v1, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Landroid/util/IntArray;

    .line 60
    .line 61
    const/4 v8, 0x1

    .line 62
    invoke-direct {v1, v8}, Landroid/util/IntArray;-><init>(I)V

    .line 63
    .line 64
    .line 65
    array-length v2, v0

    .line 66
    const/4 v3, 0x0

    .line 67
    :goto_2
    if-ge v3, v2, :cond_5

    .line 68
    .line 69
    aget v4, v0, v3

    .line 70
    .line 71
    iget-object v5, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseBooleanArray;

    .line 72
    .line 73
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_4

    .line 78
    .line 79
    iget-object v5, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseBooleanArray;

    .line 80
    .line 81
    invoke-virtual {v5, v4, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    .line 85
    .line 86
    .line 87
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-gtz v0, :cond_6

    .line 95
    .line 96
    return-void

    .line 97
    :cond_6
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/4 v1, 0x0

    .line 108
    :goto_3
    const/4 v2, -0x1

    .line 109
    if-ge v1, v0, :cond_8

    .line 110
    .line 111
    iget-object v3, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 118
    .line 119
    if-nez v3, :cond_7

    .line 120
    .line 121
    const-string/jumbo v2, "clearProvidersAndHostsTagsLocked provider is null. i:"

    .line 122
    .line 123
    .line 124
    const-string v3, " size:"

    .line 125
    .line 126
    const-string v4, "AppWidgetServiceImpl"

    .line 127
    .line 128
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    iput v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 133
    .line 134
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_8
    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    const/4 v1, 0x0

    .line 144
    :goto_5
    if-ge v1, v0, :cond_9

    .line 145
    .line 146
    iget-object v3, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 153
    .line 154
    iput v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 155
    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    new-instance v0, Landroid/content/Intent;

    .line 160
    .line 161
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 162
    .line 163
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    array-length v1, v10

    .line 167
    const/4 v2, 0x0

    .line 168
    const/4 v12, 0x0

    .line 169
    :goto_6
    if-ge v2, v1, :cond_c

    .line 170
    .line 171
    aget v3, v10, v2

    .line 172
    .line 173
    invoke-virtual {v7, v3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(ILandroid/content/Intent;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    if-eqz v3, :cond_b

    .line 178
    .line 179
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-nez v4, :cond_b

    .line 184
    .line 185
    if-nez v12, :cond_a

    .line 186
    .line 187
    new-instance v12, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    :cond_a
    invoke-interface {v12, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    .line 194
    .line 195
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_c
    if-nez v12, :cond_d

    .line 199
    .line 200
    const/4 v13, 0x0

    .line 201
    goto :goto_7

    .line 202
    :cond_d
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    move v13, v0

    .line 207
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string/jumbo v1, "loadGroupWidgetProvidersLocked, profileIds = "

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, ", allReceivers.size() = "

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v7, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersHistoryLocked(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-array v14, v13, [Z

    .line 238
    .line 239
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 240
    .line 241
    .line 242
    move-result-object v15

    .line 243
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    .line 244
    .line 245
    invoke-direct {v6, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 246
    .line 247
    .line 248
    const/4 v0, 0x0

    .line 249
    :goto_8
    if-ge v0, v13, :cond_e

    .line 250
    .line 251
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    move-object v4, v1

    .line 256
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 257
    .line 258
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;

    .line 259
    .line 260
    move-object v1, v5

    .line 261
    move-object/from16 v2, p0

    .line 262
    .line 263
    move-object v3, v6

    .line 264
    move-object v11, v5

    .line 265
    move v5, v0

    .line 266
    move-object v9, v6

    .line 267
    move-object v6, v14

    .line 268
    invoke-direct/range {v1 .. v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/util/concurrent/CountDownLatch;Landroid/content/pm/ResolveInfo;I[Z)V

    .line 269
    .line 270
    .line 271
    invoke-interface {v15, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 272
    .line 273
    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 275
    .line 276
    move-object v6, v9

    .line 277
    goto :goto_8

    .line 278
    :cond_e
    move-object v9, v6

    .line 279
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 280
    .line 281
    const-wide/16 v1, 0xbb8

    .line 282
    .line 283
    invoke-virtual {v9, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .line 285
    .line 286
    goto :goto_9

    .line 287
    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 289
    .line 290
    .line 291
    :goto_9
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 295
    .line 296
    .line 297
    move-result-wide v0

    .line 298
    const-wide/16 v2, 0x0

    .line 299
    .line 300
    cmp-long v0, v0, v2

    .line 301
    .line 302
    if-lez v0, :cond_10

    .line 303
    .line 304
    const-string v0, "AppWidgetServiceImpl"

    .line 305
    .line 306
    const-string/jumbo v1, "unhandled receivers exist, retry add unhandled providers"

    .line 307
    .line 308
    .line 309
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    const/4 v0, 0x0

    .line 313
    :goto_a
    if-ge v0, v13, :cond_10

    .line 314
    .line 315
    aget-boolean v1, v14, v0

    .line 316
    .line 317
    if-eqz v1, :cond_f

    .line 318
    .line 319
    goto :goto_b

    .line 320
    :cond_f
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 325
    .line 326
    invoke-virtual {v7, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 327
    .line 328
    .line 329
    :goto_b
    add-int/lit8 v0, v0, 0x1

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .line 336
    .line 337
    array-length v2, v10

    .line 338
    const/4 v3, 0x0

    .line 339
    const/4 v4, 0x0

    .line 340
    :goto_c
    if-ge v3, v2, :cond_13

    .line 341
    .line 342
    aget v5, v10, v3

    .line 343
    .line 344
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 349
    .line 350
    .line 351
    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    :try_start_2
    invoke-virtual {v7, v6, v5, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I

    .line 353
    .line 354
    .line 355
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    if-eqz v6, :cond_12

    .line 357
    .line 358
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 359
    .line 360
    .line 361
    goto :goto_f

    .line 362
    :catch_1
    move-exception v0

    .line 363
    goto :goto_e

    .line 364
    :catchall_0
    move-exception v0

    .line 365
    move-object v9, v0

    .line 366
    if-eqz v6, :cond_11

    .line 367
    .line 368
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 369
    .line 370
    .line 371
    goto :goto_d

    .line 372
    :catchall_1
    move-exception v0

    .line 373
    move-object v6, v0

    .line 374
    :try_start_5
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 375
    .line 376
    .line 377
    :cond_11
    :goto_d
    throw v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 378
    :goto_e
    const-string v6, "AppWidgetServiceImpl"

    .line 379
    .line 380
    new-instance v9, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    const-string v11, "Failed to read state: "

    .line 383
    .line 384
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    iget-boolean v6, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    .line 398
    .line 399
    if-eqz v6, :cond_12

    .line 400
    .line 401
    new-instance v6, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    const-string v9, "Failed to read state.u"

    .line 404
    .line 405
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v5, " : "

    .line 412
    .line 413
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeLogToFile(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    :cond_12
    :goto_f
    add-int/lit8 v3, v3, 0x1

    .line 427
    .line 428
    goto :goto_c

    .line 429
    :cond_13
    if-ltz v4, :cond_22

    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    sub-int/2addr v0, v8

    .line 436
    :goto_10
    if-ltz v0, :cond_1d

    .line 437
    .line 438
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    .line 443
    .line 444
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 445
    .line 446
    iget v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->providerTag:I

    .line 447
    .line 448
    if-gez v5, :cond_15

    .line 449
    .line 450
    :cond_14
    const/4 v10, 0x0

    .line 451
    goto :goto_13

    .line 452
    :cond_15
    iget-object v6, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 453
    .line 454
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 455
    .line 456
    .line 457
    move-result v6

    .line 458
    const/4 v9, 0x0

    .line 459
    :goto_11
    if-ge v9, v6, :cond_14

    .line 460
    .line 461
    iget-object v10, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 462
    .line 463
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v10

    .line 467
    check-cast v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 468
    .line 469
    if-nez v10, :cond_16

    .line 470
    .line 471
    const-string/jumbo v10, "findProviderByTag provider is null. i:"

    .line 472
    .line 473
    .line 474
    const-string v11, " size:"

    .line 475
    .line 476
    const-string v12, "AppWidgetServiceImpl"

    .line 477
    .line 478
    invoke-static {v9, v6, v10, v11, v12}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    goto :goto_12

    .line 482
    :cond_16
    iget v11, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 483
    .line 484
    if-ne v11, v5, :cond_17

    .line 485
    .line 486
    goto :goto_13

    .line 487
    :cond_17
    :goto_12
    add-int/lit8 v9, v9, 0x1

    .line 488
    .line 489
    goto :goto_11

    .line 490
    :goto_13
    iput-object v10, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 491
    .line 492
    if-nez v10, :cond_18

    .line 493
    .line 494
    goto :goto_16

    .line 495
    :cond_18
    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->hostTag:I

    .line 496
    .line 497
    if-gez v2, :cond_1a

    .line 498
    .line 499
    :cond_19
    const/4 v9, 0x0

    .line 500
    goto :goto_15

    .line 501
    :cond_1a
    iget-object v5, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 502
    .line 503
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    const/4 v6, 0x0

    .line 508
    :goto_14
    if-ge v6, v5, :cond_19

    .line 509
    .line 510
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v9

    .line 516
    check-cast v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 517
    .line 518
    iget v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 519
    .line 520
    if-ne v10, v2, :cond_1b

    .line 521
    .line 522
    goto :goto_15

    .line 523
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    .line 524
    .line 525
    goto :goto_14

    .line 526
    :goto_15
    iput-object v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 527
    .line 528
    if-nez v9, :cond_1c

    .line 529
    .line 530
    goto :goto_16

    .line 531
    :cond_1c
    iget-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 532
    .line 533
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 534
    .line 535
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    iget-object v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 539
    .line 540
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 541
    .line 542
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    invoke-virtual {v7, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 546
    .line 547
    .line 548
    :goto_16
    add-int/lit8 v0, v0, -0x1

    .line 549
    .line 550
    goto :goto_10

    .line 551
    :cond_1d
    if-ge v4, v8, :cond_1e

    .line 552
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    const-string v1, "Upgrading widget database from "

    .line 556
    .line 557
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v1, " to 1"

    .line 564
    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    const-string v1, "AppWidgetServiceImpl"

    .line 573
    .line 574
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    :cond_1e
    if-nez v4, :cond_20

    .line 578
    .line 579
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 580
    .line 581
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    const-string v2, "android"

    .line 586
    .line 587
    const v3, 0x4b455947    # 1.2933447E7f

    .line 588
    .line 589
    .line 590
    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v7, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    if-eqz v0, :cond_1f

    .line 598
    .line 599
    const-string/jumbo v1, "com.android.keyguard"

    .line 600
    .line 601
    .line 602
    const/4 v2, 0x0

    .line 603
    invoke-virtual {v7, v2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(ILjava/lang/String;)I

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    if-ltz v2, :cond_1f

    .line 608
    .line 609
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 610
    .line 611
    invoke-direct {v4, v2, v3, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 612
    .line 613
    .line 614
    iput-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 615
    .line 616
    :cond_1f
    move v4, v8

    .line 617
    :cond_20
    if-ne v4, v8, :cond_21

    .line 618
    .line 619
    goto/16 :goto_19

    .line 620
    .line 621
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 622
    .line 623
    const-string v1, "Failed to upgrade widget database"

    .line 624
    .line 625
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    throw v0

    .line 629
    :cond_22
    const/4 v2, 0x0

    .line 630
    const-string v0, "AppWidgetServiceImpl"

    .line 631
    .line 632
    const-string v1, "Failed to read state, clearing widgets and hosts."

    .line 633
    .line 634
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 638
    .line 639
    if-eqz v0, :cond_23

    .line 640
    .line 641
    const-string v0, "AppWidgetServiceImpl"

    .line 642
    .line 643
    const-string/jumbo v1, "clearWidgetsLocked()"

    .line 644
    .line 645
    .line 646
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    :cond_23
    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 650
    .line 651
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 652
    .line 653
    .line 654
    iget-object v1, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackagesLock:Ljava/lang/Object;

    .line 655
    .line 656
    monitor-enter v1

    .line 657
    :try_start_6
    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    .line 658
    .line 659
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 660
    .line 661
    .line 662
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 663
    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 664
    .line 665
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 666
    .line 667
    .line 668
    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 669
    .line 670
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    move v9, v2

    .line 675
    :goto_17
    if-ge v9, v0, :cond_25

    .line 676
    .line 677
    iget-object v1, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 678
    .line 679
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    if-nez v1, :cond_24

    .line 684
    .line 685
    const-string v1, "AppWidgetServiceImpl"

    .line 686
    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    .line 688
    .line 689
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    const-string v3, " is null, pre total size = "

    .line 696
    .line 697
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    const-string v3, ",but  now = "

    .line 704
    .line 705
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    iget-object v3, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 709
    .line 710
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .line 723
    .line 724
    goto :goto_18

    .line 725
    :cond_24
    iget-object v1, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 726
    .line 727
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 732
    .line 733
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 734
    .line 735
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 736
    .line 737
    .line 738
    :goto_18
    add-int/lit8 v9, v9, 0x1

    .line 739
    .line 740
    goto :goto_17

    .line 741
    :cond_25
    :goto_19
    return-void

    .line 742
    :catchall_2
    move-exception v0

    .line 743
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 744
    throw v0
.end method

.method public final getAllProvidersForProfile(IIZ)Ljava/util/List;
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_c

    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "AppWidgetServiceImpl"

    .line 16
    .line 17
    const-string/jumbo v1, "getAllProvidersForProfile() "

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v1, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    const/4 v1, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    move v5, v3

    .line 44
    :goto_0
    if-ge v5, v2, :cond_9

    .line 45
    .line 46
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 53
    .line 54
    if-nez v6, :cond_1

    .line 55
    .line 56
    const-string v6, "AppWidgetServiceImpl"

    .line 57
    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v8, "getAllProvidersForProfile provider is null skip index: "

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v8, " size:"

    .line 73
    .line 74
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_1
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 92
    .line 93
    iget-boolean v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 94
    .line 95
    if-nez v8, :cond_8

    .line 96
    .line 97
    iget v8, v7, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 98
    .line 99
    and-int/2addr v8, p1

    .line 100
    if-nez v8, :cond_2

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {v7}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-ne v8, p2, :cond_8

    .line 112
    .line 113
    if-eqz p3, :cond_5

    .line 114
    .line 115
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 116
    .line 117
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 118
    .line 119
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 120
    .line 121
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 126
    .line 127
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 128
    .line 129
    if-nez v9, :cond_3

    .line 130
    .line 131
    move v6, v3

    .line 132
    goto :goto_1

    .line 133
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_4

    .line 138
    .line 139
    move v6, v1

    .line 140
    goto :goto_1

    .line 141
    :cond_4
    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 142
    .line 143
    invoke-virtual {v8, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getCrossProfileWidgetProviders(I)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    :goto_1
    if-eqz v6, :cond_8

    .line 152
    .line 153
    :cond_5
    if-nez v4, :cond_6

    .line 154
    .line 155
    new-instance v4, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    :cond_6
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-ne v6, v8, :cond_7

    .line 169
    .line 170
    invoke-virtual {v7}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    :cond_7
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_9
    if-eqz v4, :cond_b

    .line 182
    .line 183
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_a

    .line 188
    .line 189
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSpm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 190
    .line 191
    if-eqz p1, :cond_a

    .line 192
    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationPresent()Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_a

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_a
    move v1, v3

    .line 201
    :goto_3
    if-eqz v1, :cond_b

    .line 202
    .line 203
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetProviderInfoListWithAppSeparation(Ljava/util/List;)Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    monitor-exit v0

    .line 208
    return-object p0

    .line 209
    :cond_b
    monitor-exit v0

    .line 210
    return-object v4

    .line 211
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    throw p0

    .line 213
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    .line 214
    .line 215
    const-string p1, "Can only be called by system user"

    .line 216
    .line 217
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p0
.end method

.method public final getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ne v1, v2, :cond_6

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_7

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 33
    .line 34
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 35
    .line 36
    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 37
    .line 38
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ne v2, p2, :cond_0

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v2, 0x0

    .line 49
    :goto_0
    if-nez v2, :cond_2

    .line 50
    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    :goto_1
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_0

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    new-instance v3, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 96
    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 105
    .line 106
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 107
    .line 108
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 113
    .line 114
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 115
    .line 116
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/util/ArrayList;

    .line 121
    .line 122
    if-eqz v3, :cond_5

    .line 123
    .line 124
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 134
    .line 135
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 136
    .line 137
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    if-nez v3, :cond_3

    .line 142
    .line 143
    new-instance v3, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 149
    .line 150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 158
    .line 159
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 160
    .line 161
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 166
    .line 167
    const-string p1, "Can only be called by system user"

    .line 168
    .line 169
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_3
    const-string p1, "AppWidgetServiceImpl"

    .line 174
    .line 175
    const-string/jumbo p2, "error in getAllWidgets"

    .line 176
    .line 177
    .line 178
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .line 180
    .line 181
    :cond_7
    return-object v0
.end method

.method public final getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string/jumbo v2, "getAppWidgetIds() "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v1

    .line 29
    const/4 v2, 0x1

    .line 30
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-direct {v0, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    monitor-exit v1

    .line 55
    return-object p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p0, 0x0

    .line 59
    new-array p0, p0, [I

    .line 60
    .line 61
    monitor-exit v1

    .line 62
    return-object p0

    .line 63
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public final getAppWidgetIdsForHost(Ljava/lang/String;I)[I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string/jumbo v2, "getAppWidgetIdsForHost() "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    const/4 v2, 0x1

    .line 26
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-direct {v0, v2, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    monitor-exit v1

    .line 51
    return-object p0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p0, 0x0

    .line 55
    new-array p0, p0, [I

    .line 56
    .line 57
    monitor-exit v1

    .line 58
    return-object p0

    .line 59
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 13

    .line 1
    const-string/jumbo v0, "widget is null = "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "widget provider zombi = "

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "widget provider = "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "getAppWidgetInfo() returns null because widget.provider is zombie. appWidgetId="

    .line 11
    .line 12
    .line 13
    const-string/jumbo v4, "getAppWidgetInfo() returns null because widget.provider is null. appWidgetId="

    .line 14
    .line 15
    .line 16
    const-string/jumbo v5, "getAppWidgetInfo() returns null because widget is null. appWidgetId="

    .line 17
    .line 18
    .line 19
    const-string/jumbo v6, "getAppWidgetInfo() returns null because cloneIfLocalBinder() returned null. appWidgetId="

    .line 20
    .line 21
    .line 22
    const-string/jumbo v7, "getAppWidgetInfo() returns null because widget.provider.getInfoLocked() returned null. appWidgetId="

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const-string v9, "AppWidgetServiceImpl"

    .line 30
    .line 31
    const-string/jumbo v10, "getAppWidgetInfo() "

    .line 32
    .line 33
    .line 34
    const-string v11, ", from "

    .line 35
    .line 36
    invoke-static {p2, v8, v10, v11, v9}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 40
    .line 41
    invoke-virtual {v9, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v9

    .line 47
    const/4 v10, 0x1

    .line 48
    :try_start_0
    invoke-virtual {p0, v8, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    invoke-virtual {p0, p2, v10, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v10, 0x0

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iget-object v11, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 63
    .line 64
    if-eqz v11, :cond_3

    .line 65
    .line 66
    iget-boolean v12, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 67
    .line 68
    if-nez v12, :cond_3

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v11, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-nez p0, :cond_0

    .line 77
    .line 78
    const-string p0, "AppWidgetServiceImpl"

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p2, " userId="

    .line 89
    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p2, " widget="

    .line 97
    .line 98
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    monitor-exit v9

    .line 112
    return-object v10

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-ne v0, v1, :cond_1

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_0

    .line 131
    :cond_1
    move-object v0, p0

    .line 132
    :goto_0
    if-nez v0, :cond_2

    .line 133
    .line 134
    const-string v1, "AppWidgetServiceImpl"

    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p2, " userId="

    .line 145
    .line 146
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p2, " widget="

    .line 153
    .line 154
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p1, " appWidgetProviderInfo="

    .line 161
    .line 162
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :cond_2
    monitor-exit v9

    .line 176
    return-object v0

    .line 177
    :cond_3
    if-nez p1, :cond_4

    .line 178
    .line 179
    const-string p0, "AppWidgetServiceImpl"

    .line 180
    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v4, " userId="

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_4
    iget-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 206
    .line 207
    if-nez p0, :cond_5

    .line 208
    .line 209
    const-string p0, "AppWidgetServiceImpl"

    .line 210
    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v4, " userId="

    .line 220
    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v4, " widget="

    .line 228
    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-static {p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_5
    const-string p0, "AppWidgetServiceImpl"

    .line 244
    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v3, " userId="

    .line 254
    .line 255
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v3, " widget="

    .line 262
    .line 263
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-static {p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    :goto_1
    if-eqz p1, :cond_6

    .line 277
    .line 278
    const-string p0, "AppWidgetServiceImpl"

    .line 279
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 286
    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v2, " = "

    .line 291
    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string p2, ", "

    .line 299
    .line 300
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    iget-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 314
    .line 315
    if-eqz p0, :cond_7

    .line 316
    .line 317
    const-string p0, "AppWidgetServiceImpl"

    .line 318
    .line 319
    new-instance p2, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 325
    .line 326
    iget-boolean p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 327
    .line 328
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    goto :goto_2

    .line 339
    :cond_6
    const-string p0, "AppWidgetServiceImpl"

    .line 340
    .line 341
    new-instance p1, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string p2, ", "

    .line 350
    .line 351
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    :cond_7
    :goto_2
    monitor-exit v9

    .line 365
    return-object v10

    .line 366
    :goto_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    throw p0
.end method

.method public final getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string/jumbo v2, "getAppWidgetOptions() "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    const/4 v2, 0x1

    .line 26
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-ne p1, p2, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Landroid/os/Bundle;

    .line 58
    .line 59
    :cond_1
    monitor-exit v1

    .line 60
    return-object p0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 64
    .line 65
    monitor-exit v1

    .line 66
    return-object p0

    .line 67
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string/jumbo v2, "getAppWidgetViews() "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    const/4 v2, 0x1

    .line 26
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 45
    .line 46
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-ne p0, p2, :cond_2

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :cond_2
    monitor-exit v1

    .line 63
    return-object p1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    monitor-exit v1

    .line 67
    const/4 p0, 0x0

    .line 68
    return-object p0

    .line 69
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public final getCanonicalPackageName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Landroid/content/ComponentName;

    .line 10
    .line 11
    invoke-direct {v3, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    invoke-interface {v2, v3, v4, v5, p1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    return-object p2

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    filled-new-array {p2}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    array-length p1, p0

    .line 42
    if-lez p1, :cond_0

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    aget-object p0, p0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0

    .line 56
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final getFdFromPackage(ILjava/lang/String;)I
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageToPidMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/HashSet;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 p2, 0x0

    .line 30
    if-lez p1, :cond_8

    .line 31
    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo p0, "exception to close buffer reader : "

    .line 38
    .line 39
    .line 40
    const-string v0, "AppWidgetServiceImpl"

    .line 41
    .line 42
    const-string v1, "/proc/"

    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    const-string/jumbo v4, "dev/ashmem/Parcel Blob_"

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    .line 53
    .line 54
    new-instance v7, Ljava/io/FileReader;

    .line 55
    .line 56
    new-instance v8, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, "/maps"

    .line 69
    .line 70
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-ltz v5, :cond_2

    .line 94
    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v5, v5, 0x17

    .line 101
    .line 102
    :goto_1
    add-int/lit8 v8, v5, 0x1

    .line 103
    .line 104
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    const/16 v9, 0x30

    .line 109
    .line 110
    if-lt v5, v9, :cond_3

    .line 111
    .line 112
    const/16 v9, 0x39

    .line 113
    .line 114
    if-gt v5, v9, :cond_3

    .line 115
    .line 116
    int-to-char v5, v5

    .line 117
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move v5, v8

    .line 121
    goto :goto_1

    .line 122
    :catchall_0
    move-exception p1

    .line 123
    move-object v5, v6

    .line 124
    goto/16 :goto_5

    .line 125
    .line 126
    :catch_0
    move-exception v1

    .line 127
    move-object v5, v6

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-lez v1, :cond_2

    .line 134
    .line 135
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_2

    .line 152
    .line 153
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    check-cast v7, Ljava/lang/Integer;

    .line 158
    .line 159
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    if-ne v7, v1, :cond_4

    .line 164
    .line 165
    add-int/lit8 p2, p2, 0x1

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_5
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catch_1
    move-exception v1

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :catchall_1
    move-exception p1

    .line 194
    goto :goto_5

    .line 195
    :catch_2
    move-exception v1

    .line 196
    :goto_3
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string/jumbo v6, "exception to get process name by proc : "

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    .line 220
    .line 221
    if-eqz v5, :cond_6

    .line 222
    .line 223
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :catch_3
    move-exception v1

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_6
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 235
    .line 236
    .line 237
    move-result-wide v4

    .line 238
    sub-long/2addr v4, v2

    .line 239
    new-instance p0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    const-string/jumbo v1, "getAshmemFdCount returning : pid = "

    .line 242
    .line 243
    .line 244
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string p1, ", fd count = "

    .line 251
    .line 252
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string p1, " ("

    .line 259
    .line 260
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string p1, ")"

    .line 267
    .line 268
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    goto :goto_7

    .line 279
    :goto_5
    if-eqz v5, :cond_7

    .line 280
    .line 281
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :catch_4
    move-exception p2

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    :cond_7
    :goto_6
    throw p1

    .line 306
    :cond_8
    :goto_7
    return p2
.end method

.method public final getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "Instant uid "

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    iput-wide v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorStartTime:J

    .line 14
    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    iput-wide v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorEndTime:J

    .line 18
    .line 19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    sget-boolean v8, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 28
    .line 29
    if-eqz v8, :cond_0

    .line 30
    .line 31
    const-string v8, "AppWidgetServiceImpl"

    .line 32
    .line 33
    const-string/jumbo v9, "getInstalledProvidersForProfiles() "

    .line 34
    .line 35
    .line 36
    invoke-static {v6, v9, v8}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v8, "AppWidgetServiceImpl"

    .line 41
    .line 42
    const-string/jumbo v9, "getInstalledProvidersForProfiles() "

    .line 43
    .line 44
    .line 45
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 49
    .line 50
    invoke-virtual {v8, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-nez v8, :cond_1

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    return-object v0

    .line 58
    :cond_1
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v8

    .line 61
    :try_start_0
    const-string v9, "AppWidgetServiceImpl"

    .line 62
    .line 63
    const-string/jumbo v10, "getInstalledProvidersForProfiles lock in"

    .line 64
    .line 65
    .line 66
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 70
    .line 71
    invoke-virtual {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerInstantAppLocked()Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_2

    .line 76
    .line 77
    const-string v0, "AppWidgetServiceImpl"

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, " cannot access widget providers"

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    monitor-exit v8

    .line 104
    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :cond_2
    const/4 v3, 0x1

    .line 109
    invoke-virtual {v0, v6, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 110
    .line 111
    .line 112
    new-instance v6, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    iput v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorProviderCount:I

    .line 124
    .line 125
    iput-wide v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorProviderInfoLoadTime:J

    .line 126
    .line 127
    const/4 v5, 0x0

    .line 128
    :goto_1
    if-ge v5, v9, :cond_b

    .line 129
    .line 130
    iget-object v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    check-cast v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 137
    .line 138
    if-nez v10, :cond_3

    .line 139
    .line 140
    const-string v10, "AppWidgetServiceImpl"

    .line 141
    .line 142
    new-instance v11, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string/jumbo v12, "getInstalledProvidersForProfile provider is null. i:"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v12, " size:"

    .line 157
    .line 158
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto/16 :goto_4

    .line 172
    .line 173
    :cond_3
    iget-object v11, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 174
    .line 175
    iget-object v11, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 176
    .line 177
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    if-eqz v2, :cond_5

    .line 182
    .line 183
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    if-eqz v12, :cond_4

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_4
    const/4 v12, 0x0

    .line 191
    goto :goto_3

    .line 192
    :cond_5
    :goto_2
    move v12, v3

    .line 193
    :goto_3
    iget-boolean v13, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 194
    .line 195
    if-nez v13, :cond_a

    .line 196
    .line 197
    if-nez v12, :cond_6

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 201
    .line 202
    .line 203
    move-result-wide v12

    .line 204
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {v10, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 211
    .line 212
    .line 213
    move-result-wide v14

    .line 214
    sub-long/2addr v14, v12

    .line 215
    iget-wide v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorProviderInfoLoadTime:J

    .line 216
    .line 217
    add-long/2addr v12, v14

    .line 218
    iput-wide v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorProviderInfoLoadTime:J

    .line 219
    .line 220
    const-wide/16 v12, 0x1f4

    .line 221
    .line 222
    cmp-long v12, v14, v12

    .line 223
    .line 224
    if-lez v12, :cond_7

    .line 225
    .line 226
    const-string v12, "AppWidgetServiceImpl"

    .line 227
    .line 228
    new-instance v13, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string/jumbo v4, "long infoLock detected "

    .line 234
    .line 235
    .line 236
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v4, " "

    .line 243
    .line 244
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    :cond_7
    iget v4, v10, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 258
    .line 259
    and-int v4, v4, p1

    .line 260
    .line 261
    if-nez v4, :cond_8

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_8
    invoke-virtual {v10}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-ne v4, v1, :cond_a

    .line 273
    .line 274
    iget-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 275
    .line 276
    invoke-virtual {v12, v4, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(ILjava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-eqz v4, :cond_a

    .line 281
    .line 282
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 283
    .line 284
    invoke-virtual {v4, v7, v1, v11, v3}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-nez v4, :cond_a

    .line 289
    .line 290
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 295
    .line 296
    .line 297
    move-result v11

    .line 298
    if-ne v4, v11, :cond_9

    .line 299
    .line 300
    invoke-virtual {v10}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    :cond_9
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 308
    .line 309
    goto/16 :goto_1

    .line 310
    .line 311
    :cond_b
    const/4 v1, 0x0

    .line 312
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_c

    .line 317
    .line 318
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSpm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 319
    .line 320
    if-eqz v1, :cond_c

    .line 321
    .line 322
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationPresent()Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_c

    .line 327
    .line 328
    const-string v1, "AppWidgetServiceImpl"

    .line 329
    .line 330
    const-string/jumbo v2, "getInstalledProvidersForProfiles lock exit on separation"

    .line 331
    .line 332
    .line 333
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    .line 337
    .line 338
    invoke-virtual {v0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetProviderInfoListWithAppSeparation(Ljava/util/List;)Ljava/util/List;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 343
    .line 344
    .line 345
    monitor-exit v8

    .line 346
    return-object v1

    .line 347
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 348
    .line 349
    .line 350
    move-result-wide v3

    .line 351
    iput-wide v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorEndTime:J

    .line 352
    .line 353
    iget-wide v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorStartTime:J

    .line 354
    .line 355
    sub-long/2addr v3, v9

    .line 356
    const-wide/16 v9, 0xbb8

    .line 357
    .line 358
    cmp-long v1, v3, v9

    .line 359
    .line 360
    if-lez v1, :cond_d

    .line 361
    .line 362
    const-string v1, "AppWidgetServiceImpl"

    .line 363
    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    const-string/jumbo v4, "finish installedProviderInfo t:"

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    iget-wide v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorEndTime:J

    .line 376
    .line 377
    iget-wide v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorStartTime:J

    .line 378
    .line 379
    sub-long/2addr v4, v9

    .line 380
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v4, " r:"

    .line 384
    .line 385
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    iget-wide v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorProviderInfoLoadTime:J

    .line 389
    .line 390
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    :cond_d
    const-string v1, "AppWidgetServiceImpl"

    .line 401
    .line 402
    const-string/jumbo v3, "getInstalledProvidersForProfiles lock exit"

    .line 403
    .line 404
    .line 405
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string/jumbo v3, "getInstalledProvidersForProfiles "

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v3, " "

    .line 423
    .line 424
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string v2, " t:"

    .line 431
    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    iget-wide v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorEndTime:J

    .line 436
    .line 437
    iget-wide v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorStartTime:J

    .line 438
    .line 439
    sub-long/2addr v2, v4

    .line 440
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v2, " r:"

    .line 444
    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    iget-wide v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDebugMonitorProviderInfoLoadTime:J

    .line 449
    .line 450
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersHistoryLocked(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    .line 461
    .line 462
    invoke-direct {v0, v6}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 463
    .line 464
    .line 465
    monitor-exit v8

    .line 466
    return-object v0

    .line 467
    :goto_5
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    throw v0
.end method

.method public final getProviderInfo(ILandroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(ILandroid/content/Intent;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 27
    .line 28
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final getTemplateWidgetPreview(Ljava/lang/String;Landroid/content/ComponentName;III)Landroid/os/Bundle;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    sget-boolean v4, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    const-string v4, "AppWidgetServiceImpl"

    .line 16
    .line 17
    const-string/jumbo v5, "getTemplateWidgetPreview() "

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v5, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static/range {p4 .. p5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureTemplateWidgetPropertyCombinationIsValid(II)V

    .line 29
    .line 30
    .line 31
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v3

    .line 34
    const/4 v4, 0x1

    .line 35
    :try_start_0
    invoke-virtual {v0, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 36
    .line 37
    .line 38
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/4 v6, 0x0

    .line 45
    :goto_0
    if-ge v6, v5, :cond_6

    .line 46
    .line 47
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 54
    .line 55
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 56
    .line 57
    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 58
    .line 59
    iget-boolean v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 60
    .line 61
    if-nez v9, :cond_5

    .line 62
    .line 63
    move-object/from16 v9, p2

    .line 64
    .line 65
    invoke-virtual {v9, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-nez v10, :cond_2

    .line 70
    .line 71
    :cond_1
    :goto_1
    move/from16 v8, p4

    .line 72
    .line 73
    move/from16 v10, p5

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_2
    iget-object v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v7, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-virtual {v10}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-eq v10, v2, :cond_3

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    iget-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 103
    .line 104
    invoke-virtual {v12, v10, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(ILjava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 109
    .line 110
    invoke-virtual {v13, v11, v10, v8, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    iget-object v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 115
    .line 116
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {v7, v11, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    iget-object v11, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 124
    .line 125
    invoke-virtual {v11, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    const-string v13, "AppWidgetServiceImpl"

    .line 130
    .line 131
    new-instance v14, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v15, "Permission : "

    .line 137
    .line 138
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v15, " "

    .line 145
    .line 146
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v15, " "

    .line 153
    .line 154
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v15, " "

    .line 161
    .line 162
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    if-eqz v12, :cond_1

    .line 176
    .line 177
    if-nez v8, :cond_1

    .line 178
    .line 179
    if-nez v10, :cond_4

    .line 180
    .line 181
    if-eqz v11, :cond_1

    .line 182
    .line 183
    :cond_4
    move/from16 v8, p4

    .line 184
    .line 185
    move/from16 v10, p5

    .line 186
    .line 187
    invoke-virtual {v7, v8, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getTemplatePreviewLocked(II)Landroid/os/Bundle;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    monitor-exit v3

    .line 192
    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    goto :goto_3

    .line 195
    :cond_5
    move-object/from16 v9, p2

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 204
    .line 205
    return-object v0

    .line 206
    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    throw v0
.end method

.method public final getUidForPackage(ILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-interface {p0, p2, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    :goto_0
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 34
    .line 35
    return p0

    .line 36
    :cond_1
    :goto_1
    const/4 p0, -0x1

    .line 37
    return p0
.end method

.method public final getWidgetParticipants(I)Ljava/util/List;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "BackupRestoreController"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Getting widget participants for user: "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-ge v3, v2, :cond_2

    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 55
    .line 56
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-ne v5, p1, :cond_1

    .line 63
    .line 64
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 65
    .line 66
    if-eqz v5, :cond_0

    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-ne v5, p1, :cond_1

    .line 73
    .line 74
    :cond_0
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 75
    .line 76
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 77
    .line 78
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 84
    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 88
    .line 89
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 90
    .line 91
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    new-instance p0, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p0
.end method

.method public final getWidgetPreview(Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/widget/RemoteViews;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    sget-boolean v4, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    const-string v4, "AppWidgetServiceImpl"

    .line 16
    .line 17
    const-string/jumbo v5, "getWidgetPreview() "

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v5, v4}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static/range {p4 .. p4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureWidgetCategoryCombinationIsValid(I)V

    .line 29
    .line 30
    .line 31
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v3

    .line 34
    const/4 v4, 0x1

    .line 35
    :try_start_0
    invoke-virtual {v0, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 36
    .line 37
    .line 38
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/4 v6, 0x0

    .line 45
    move v7, v6

    .line 46
    :goto_0
    const/4 v8, 0x0

    .line 47
    if-ge v7, v5, :cond_8

    .line 48
    .line 49
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    check-cast v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 56
    .line 57
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 58
    .line 59
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 60
    .line 61
    iget-boolean v11, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 62
    .line 63
    if-nez v11, :cond_6

    .line 64
    .line 65
    move-object/from16 v11, p2

    .line 66
    .line 67
    invoke-virtual {v11, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    if-nez v12, :cond_1

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_1
    iget-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v9, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    invoke-virtual {v12}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-eq v12, v2, :cond_2

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    iget-object v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 100
    .line 101
    invoke-virtual {v14, v12, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(ILjava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 106
    .line 107
    invoke-virtual {v15, v13, v12, v10, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    iget-object v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 112
    .line 113
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {v9, v13, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 121
    .line 122
    invoke-virtual {v13, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    if-eqz v14, :cond_7

    .line 127
    .line 128
    if-nez v10, :cond_7

    .line 129
    .line 130
    if-nez v12, :cond_3

    .line 131
    .line 132
    if-eqz v13, :cond_7

    .line 133
    .line 134
    :cond_3
    :goto_1
    iget-object v0, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->generatedPreviews:Landroid/util/SparseArray;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-ge v6, v0, :cond_5

    .line 141
    .line 142
    iget-object v0, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->generatedPreviews:Landroid/util/SparseArray;

    .line 143
    .line 144
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    and-int v0, p4, v0

    .line 149
    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    iget-object v0, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->generatedPreviews:Landroid/util/SparseArray;

    .line 153
    .line 154
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    move-object v8, v0

    .line 159
    check-cast v8, Landroid/widget/RemoteViews;

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    :goto_2
    monitor-exit v3

    .line 166
    return-object v8

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    goto :goto_4

    .line 169
    :cond_6
    move-object/from16 v11, p2

    .line 170
    .line 171
    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_8
    monitor-exit v3

    .line 175
    return-object v8

    .line 176
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    throw v0
.end method

.method public final getWidgetState(Ljava/lang/String;I)[B
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "BackupRestoreController"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Getting widget state for user: "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 36
    .line 37
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x0

    .line 44
    move v5, v4

    .line 45
    :goto_0
    const/4 v6, 0x0

    .line 46
    if-ge v5, v3, :cond_e

    .line 47
    .line 48
    iget-object v7, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 55
    .line 56
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 57
    .line 58
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-ne v8, p2, :cond_d

    .line 63
    .line 64
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 65
    .line 66
    if-eqz v8, :cond_0

    .line 67
    .line 68
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-ne v8, p2, :cond_d

    .line 73
    .line 74
    :cond_0
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 75
    .line 76
    invoke-virtual {v8, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(ILjava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 84
    .line 85
    if-eqz v7, :cond_d

    .line 86
    .line 87
    invoke-virtual {v7, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(ILjava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz v7, :cond_d

    .line 92
    .line 93
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-interface {v2, v6, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 109
    .line 110
    .line 111
    const-string/jumbo v3, "ws"

    .line 112
    .line 113
    .line 114
    invoke-interface {v2, v6, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    .line 116
    .line 117
    const-string/jumbo v3, "version"

    .line 118
    .line 119
    .line 120
    const/4 v5, 0x2

    .line 121
    invoke-interface {v2, v6, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    .line 123
    .line 124
    const-string/jumbo v3, "pkg"

    .line 125
    .line 126
    .line 127
    invoke-interface {v2, v6, v3, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 131
    .line 132
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 133
    .line 134
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    move v5, v4

    .line 139
    move v7, v5

    .line 140
    :goto_2
    if-ge v5, v3, :cond_6

    .line 141
    .line 142
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 143
    .line 144
    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 151
    .line 152
    if-nez v8, :cond_2

    .line 153
    .line 154
    const-string v8, "BackupRestoreController"

    .line 155
    .line 156
    new-instance v9, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string/jumbo v10, "getWidgetState provider is null. i:"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v10, " size:"

    .line 171
    .line 172
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :catchall_0
    move-exception p0

    .line 187
    goto/16 :goto_7

    .line 188
    .line 189
    :cond_2
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    if-eqz v9, :cond_3

    .line 196
    .line 197
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    if-nez v9, :cond_5

    .line 204
    .line 205
    :cond_3
    invoke-virtual {v8, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(ILjava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    if-nez v9, :cond_4

    .line 210
    .line 211
    invoke-virtual {v8, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->hostedByPackageForUser(ILjava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    if-eqz v9, :cond_5

    .line 216
    .line 217
    :cond_4
    iput v7, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 218
    .line 219
    invoke-static {v2, v8, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Z)V

    .line 220
    .line 221
    .line 222
    add-int/lit8 v7, v7, 0x1

    .line 223
    .line 224
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_6
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 228
    .line 229
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    move v5, v4

    .line 236
    move v7, v5

    .line 237
    :goto_4
    if-ge v5, v3, :cond_9

    .line 238
    .line 239
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 240
    .line 241
    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 248
    .line 249
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    if-nez v9, :cond_8

    .line 256
    .line 257
    invoke-virtual {v8, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(ILjava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-nez v9, :cond_7

    .line 262
    .line 263
    invoke-static {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->-$$Nest$mhostsPackageForUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    if-eqz v9, :cond_8

    .line 268
    .line 269
    :cond_7
    iput v7, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 270
    .line 271
    invoke-static {v2, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 272
    .line 273
    .line 274
    add-int/lit8 v7, v7, 0x1

    .line 275
    .line 276
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_9
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 280
    .line 281
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    move v5, v4

    .line 288
    :goto_5
    if-ge v5, v3, :cond_c

    .line 289
    .line 290
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 291
    .line 292
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 299
    .line 300
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 301
    .line 302
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 303
    .line 304
    invoke-virtual {v9, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(ILjava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v9

    .line 308
    if-nez v9, :cond_a

    .line 309
    .line 310
    if-eqz v8, :cond_b

    .line 311
    .line 312
    invoke-virtual {v8, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(ILjava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    if-eqz v8, :cond_b

    .line 317
    .line 318
    :cond_a
    invoke-static {v2, v7, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Z)V

    .line 319
    .line 320
    .line 321
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_c
    const-string/jumbo p0, "ws"

    .line 325
    .line 326
    .line 327
    invoke-interface {v2, v6, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    .line 329
    .line 330
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    .line 332
    .line 333
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    goto :goto_6

    .line 339
    :catch_0
    :try_start_3
    const-string p0, "BackupRestoreController"

    .line 340
    .line 341
    new-instance p2, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    const-string v0, "Unable to save widget state for "

    .line 347
    .line 348
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    monitor-exit v1

    .line 362
    goto :goto_6

    .line 363
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :cond_e
    monitor-exit v1

    .line 368
    :goto_6
    return-object v6

    .line 369
    :goto_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 370
    throw p0
.end method

.method public final hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AppWidgetServiceImpl"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "hasBindAppWidgetPermission() "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v2, "hasBindAppWidgetPermission packageName="

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v0

    .line 58
    const/4 v1, 0x1

    .line 59
    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(ILjava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-gez v1, :cond_1

    .line 67
    .line 68
    monitor-exit v0

    .line 69
    const/4 p0, 0x0

    .line 70
    return p0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    monitor-exit v0

    .line 88
    return p0

    .line 89
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
.end method

.method public final incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/util/HashSet;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-object p0, v0

    .line 29
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final isBoundWidgetPackage(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackagesLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/util/ArraySet;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    monitor-exit v0

    .line 27
    return p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    monitor-exit v0

    .line 31
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 36
    .line 37
    const-string p1, "Only the system process can call this"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final isProfileWithLockedParent(I)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 38
    .line 39
    .line 40
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return p0

    .line 55
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method

.method public final isProfileWithUnlockedParent(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final isRequestPinAppWidgetSupported()Z
    .locals 3

    .line 1
    const-string v0, "Instant uid "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerInstantAppLocked()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string p0, "AppWidgetServiceImpl"

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, " query information about app widgets"

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    monitor-exit v1

    .line 41
    const/4 p0, 0x0

    .line 42
    return p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const-class p0, Landroid/content/pm/ShortcutServiceInternal;

    .line 47
    .line 48
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Landroid/content/pm/ShortcutServiceInternal;

    .line 53
    .line 54
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x2

    .line 59
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->isRequestPinItemSupported(II)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0
.end method

.method public final isTemplatePreviewUpdateAvailable(Landroid/content/ComponentName;)Z
    .locals 7

    .line 1
    const-string v0, "Time remaining until update is possible : "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-direct {v2, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->getOrCreateRecord(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-wide v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    .line 41
    .line 42
    sub-long/2addr v2, v4

    .line 43
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 44
    .line 45
    iget-wide v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    .line 46
    .line 47
    cmp-long v5, v2, v5

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    if-gtz v5, :cond_1

    .line 51
    .line 52
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 53
    .line 54
    iget v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    .line 55
    .line 56
    if-ge p1, v4, :cond_0

    .line 57
    .line 58
    monitor-exit v1

    .line 59
    return v6

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-string p1, "AppWidgetServiceImpl"

    .line 63
    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 70
    .line 71
    iget-wide v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    .line 72
    .line 73
    sub-long/2addr v5, v2

    .line 74
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    monitor-exit v1

    .line 85
    const/4 p0, 0x0

    .line 86
    return p0

    .line 87
    :cond_1
    monitor-exit v1

    .line 88
    return v6

    .line 89
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, " is not a valid AppWidget provider"

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0
.end method

.method public final lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 19
    .line 20
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 30
    .line 31
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 32
    .line 33
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 34
    .line 35
    iget v5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 36
    .line 37
    if-ne v4, v5, :cond_1

    .line 38
    .line 39
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/16 v2, 0x14

    .line 58
    .line 59
    if-lt v1, v2, :cond_3

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 73
    .line 74
    invoke-direct {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string/jumbo v1, "lookupOrAddHostLocked = "

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-string p1, "AppWidgetServiceImpl"

    .line 100
    .line 101
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    return-object v0
.end method

.method public final lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .locals 7

    .line 1
    const-string v0, "AppWidgetServiceImpl"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    const/4 v3, 0x0

    .line 11
    if-ge v2, v1, :cond_3

    .line 12
    .line 13
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 26
    .line 27
    add-int/lit8 v5, v2, -0x1

    .line 28
    .line 29
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :cond_0
    const-string/jumbo v4, "lookupProviderLocked provider is null size:"

    .line 52
    .line 53
    .line 54
    const-string v5, " index:"

    .line 55
    .line 56
    const-string v6, " prevComp:"

    .line 57
    .line 58
    invoke-static {v1, v2, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    const/4 v3, 0x5

    .line 73
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string/jumbo v4, "caller:"

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v3, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iget-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 85
    .line 86
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    return-object v4

    .line 93
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string/jumbo v1, "lookupProviderLocked "

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    :cond_3
    return-object v3
.end method

.method public final lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    const-string v2, "AppWidgetServiceImpl"

    const-string v3, " uid="

    if-ge v1, v0, :cond_6

    .line 3
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4
    iget v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v5, p1, :cond_5

    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 7
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne v7, p2, :cond_0

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-static {v6, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 10
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne v6, p2, :cond_2

    if-eqz v7, :cond_2

    iget-object v6, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 11
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 13
    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v7

    if-eq v7, v6, :cond_3

    iget-object v7, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v7, :cond_4

    .line 14
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v7

    if-ne v7, v6, :cond_4

    :cond_3
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BIND_APPWIDGET"

    .line 15
    invoke-virtual {v5, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    :goto_1
    return-object v4

    .line 16
    :cond_4
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 17
    const-string/jumbo v5, "canAccessAppWidget() failed. packageName="

    const-string v7, " userId="

    .line 18
    invoke-static {p2, v5, p3, v3, v7}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 19
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " widget="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 20
    :cond_6
    sget-boolean p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz p0, :cond_7

    .line 21
    const-string/jumbo p0, "cannot find widget for appWidgetId="

    const-string v0, " packageName="

    .line 22
    invoke-static {p1, p2, p0, v3, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 23
    invoke-static {p0, p3, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public final lookupWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 40
    iget v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v2, p1, :cond_1

    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 41
    invoke-virtual {p2, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v4, Landroid/widget/RemoteViews;

    .line 17
    .line 18
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const v6, 0x10901e9

    .line 25
    .line 26
    .line 27
    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 31
    .line 32
    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v5, v6

    .line 41
    :goto_0
    if-eqz v5, :cond_2

    .line 42
    .line 43
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 44
    .line 45
    :goto_1
    move-object v8, v7

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    iget-object v7, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 48
    .line 49
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 50
    .line 51
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    goto :goto_1

    .line 56
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    .line 62
    .line 63
    move-result-wide v14

    .line 64
    :try_start_0
    iget-boolean v7, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuperLocked:Z

    .line 65
    .line 66
    const/16 v16, 0x0

    .line 67
    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->createLockdownIntent(I)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    :goto_3
    move/from16 v9, v16

    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto/16 :goto_a

    .line 80
    .line 81
    :cond_3
    iget-boolean v7, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    .line 82
    .line 83
    const/4 v9, 0x1

    .line 84
    if-eqz v7, :cond_4

    .line 85
    .line 86
    invoke-static {v13}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    goto/16 :goto_5

    .line 91
    .line 92
    :cond_4
    iget-boolean v7, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 93
    .line 94
    if-eqz v7, :cond_6

    .line 95
    .line 96
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 97
    .line 98
    invoke-virtual {v7, v13}, Landroid/os/UserManager;->hasBadge(I)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    iget-object v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 103
    .line 104
    check-cast v10, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 105
    .line 106
    iget-object v11, v10, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 107
    .line 108
    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 109
    .line 110
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 111
    .line 112
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {v13, v12, v10, v8}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendingPackage(IILcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/content/pm/UserPackage;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    if-eqz v10, :cond_5

    .line 128
    .line 129
    const-string v11, "android"

    .line 130
    .line 131
    iget-object v12, v10, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-eqz v11, :cond_5

    .line 138
    .line 139
    iget-object v8, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 140
    .line 141
    invoke-virtual {v8, v13, v9}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    goto :goto_4

    .line 146
    :cond_5
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 147
    .line 148
    invoke-virtual {v9, v8, v10, v13}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogInfo(Ljava/lang/String;Landroid/content/pm/UserPackage;I)Landroid/content/pm/SuspendDialogInfo;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    const/4 v12, 0x0

    .line 153
    const/16 v17, 0x0

    .line 154
    .line 155
    move-object v9, v10

    .line 156
    move-object v10, v11

    .line 157
    move-object v11, v12

    .line 158
    move-object/from16 v12, v17

    .line 159
    .line 160
    invoke-static/range {v8 .. v13}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Landroid/content/pm/UserPackage;Landroid/content/pm/SuspendDialogInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    :goto_4
    move v9, v7

    .line 165
    move-object v7, v8

    .line 166
    goto :goto_5

    .line 167
    :cond_6
    iget-boolean v7, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    .line 168
    .line 169
    if-eqz v7, :cond_7

    .line 170
    .line 171
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 172
    .line 173
    invoke-virtual {v7, v6, v6, v13}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    if-eqz v7, :cond_9

    .line 178
    .line 179
    const/high16 v8, 0x10800000

    .line 180
    .line 181
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_7
    iget-boolean v7, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 186
    .line 187
    if-eqz v7, :cond_8

    .line 188
    .line 189
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 190
    .line 191
    invoke-virtual {v7, v13}, Landroid/os/UserManager;->hasBadge(I)Z

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    move-object v7, v6

    .line 196
    goto :goto_5

    .line 197
    :cond_8
    move-object v7, v6

    .line 198
    goto :goto_3

    .line 199
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    .line 200
    .line 201
    iget v8, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 202
    .line 203
    if-eqz v8, :cond_a

    .line 204
    .line 205
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {v5, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    goto :goto_6

    .line 212
    :cond_a
    iget-object v5, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    const v8, 0x1080093

    .line 215
    .line 216
    .line 217
    invoke-static {v5, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    :goto_6
    const v8, 0x10206c4

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v8, v5}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 225
    .line 226
    .line 227
    if-nez v9, :cond_b

    .line 228
    .line 229
    const v5, 0x10206c5

    .line 230
    .line 231
    .line 232
    const/4 v8, 0x4

    .line 233
    invoke-virtual {v4, v5, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 234
    .line 235
    .line 236
    :cond_b
    move/from16 v5, v16

    .line 237
    .line 238
    :goto_7
    if-ge v5, v3, :cond_f

    .line 239
    .line 240
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v8

    .line 246
    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 247
    .line 248
    if-eqz v2, :cond_c

    .line 249
    .line 250
    if-eq v2, v8, :cond_c

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_c
    iget-boolean v9, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 254
    .line 255
    const/high16 v10, 0xc000000

    .line 256
    .line 257
    const/high16 v11, 0x1020000

    .line 258
    .line 259
    if-eqz v9, :cond_d

    .line 260
    .line 261
    iget v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 262
    .line 263
    filled-new-array {v9}, [I

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    new-instance v12, Landroid/content/Intent;

    .line 268
    .line 269
    const-string v13, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 270
    .line 271
    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string v13, "appWidgetIds"

    .line 275
    .line 276
    invoke-virtual {v12, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 277
    .line 278
    .line 279
    iget-object v9, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 280
    .line 281
    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 282
    .line 283
    invoke-virtual {v12, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 284
    .line 285
    .line 286
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 287
    .line 288
    iget v13, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 289
    .line 290
    invoke-static {v9, v13, v12, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    invoke-virtual {v4, v11, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 295
    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_d
    if-eqz v7, :cond_e

    .line 299
    .line 300
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 301
    .line 302
    iget v12, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 303
    .line 304
    invoke-static {v9, v12, v7, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    invoke-virtual {v4, v11, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 309
    .line 310
    .line 311
    :cond_e
    :goto_8
    iput-object v4, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 312
    .line 313
    iput-object v6, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->transactionError:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v0, v8, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .line 317
    .line 318
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_f
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    .line 323
    .line 324
    return-void

    .line 325
    :goto_a
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    .line 327
    .line 328
    throw v0
.end method

.method public final noteAppWidgetTapped(Ljava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 15
    .line 16
    invoke-virtual {v3, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    .line 17
    .line 18
    .line 19
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    const/4 v4, 0x2

    .line 21
    if-le v3, v4, :cond_0

    .line 22
    .line 23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :try_start_3
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 46
    .line 47
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    :try_start_4
    new-instance v0, Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 63
    .line 64
    .line 65
    iget v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 66
    .line 67
    invoke-virtual {v0, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    invoke-virtual {v4, v0, v5}, Landroid/app/AppOpsManagerInternal;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    .line 74
    .line 75
    .line 76
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 77
    .line 78
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    const-string/jumbo v0, "tap"

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroid/app/usage/Flags;->userInteractionTypeApi()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    new-instance v4, Landroid/os/PersistableBundle;

    .line 92
    .line 93
    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v5, "android.app.usage.extra.EVENT_CATEGORY"

    .line 97
    .line 98
    const-string v6, "android.appwidget"

    .line 99
    .line 100
    invoke-virtual {v4, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v5, "android.app.usage.extra.EVENT_ACTION"

    .line 104
    .line 105
    invoke-virtual {v4, v5, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 109
    .line 110
    invoke-virtual {p0, p2, p1, v4}, Landroid/app/usage/UsageStatsManagerInternal;->reportUserInteractionEvent(Ljava/lang/String;ILandroid/os/PersistableBundle;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 115
    .line 116
    const/4 v0, 0x7

    .line 117
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(IILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :goto_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 126
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    .line 130
    .line 131
    throw p0
.end method

.method public final notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string/jumbo v2, "notifyAppWidgetViewDataChanged() "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_4

    .line 23
    .line 24
    array-length v1, p2

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    const/4 v2, 0x1

    .line 32
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 33
    .line 34
    .line 35
    array-length v0, p2

    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_0
    if-ge v2, v0, :cond_3

    .line 38
    .line 39
    aget v3, p2, v2

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, v3, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    monitor-exit v1

    .line 61
    return-void

    .line 62
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0

    .line 64
    :cond_4
    :goto_3
    return-void
.end method

.method public final notifyProviderInheritance([Landroid/content/ComponentName;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string/jumbo v2, "notifyProviderInheritance() "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    array-length v1, p1

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_0
    if-ge v3, v1, :cond_3

    .line 24
    .line 25
    aget-object v4, p1, v3

    .line 26
    .line 27
    if-nez v4, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v1

    .line 45
    const/4 v3, 0x1

    .line 46
    :try_start_0
    invoke-virtual {p0, v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 47
    .line 48
    .line 49
    array-length v4, p1

    .line 50
    :goto_1
    if-ge v2, v4, :cond_6

    .line 51
    .line 52
    aget-object v5, p1, v2

    .line 53
    .line 54
    new-instance v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-direct {v6, v7, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_5

    .line 68
    .line 69
    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 70
    .line 71
    if-nez v5, :cond_4

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iput-boolean v3, v5, Landroid/appwidget/AppWidgetProviderInfo;->isExtendedFromAppWidgetProvider:Z

    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    :goto_2
    monitor-exit v1

    .line 82
    return-void

    .line 83
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 84
    .line 85
    .line 86
    monitor-exit v1

    .line 87
    return-void

    .line 88
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

.method public final onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_7

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    new-instance v2, Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    move v5, v4

    .line 25
    :goto_0
    if-ge v5, v3, :cond_2

    .line 26
    .line 27
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 34
    .line 35
    if-nez v6, :cond_0

    .line 36
    .line 37
    const-string v6, "AppWidgetServiceImpl"

    .line 38
    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string/jumbo v8, "onCrossProfileWidgetProvidersChanged provider is null. i:"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v8, " size:"

    .line 54
    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_4

    .line 71
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-ne v7, p1, :cond_1

    .line 76
    .line 77
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 78
    .line 79
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 80
    .line 81
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    move v5, v4

    .line 96
    move v6, v5

    .line 97
    :goto_2
    if-ge v5, v3, :cond_3

    .line 98
    .line 99
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    check-cast v7, Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    const/4 v8, 0x0

    .line 109
    invoke-virtual {p0, v7, v8, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    or-int/2addr v6, v7

    .line 114
    add-int/lit8 v5, v5, 0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    :goto_3
    if-ge v4, p2, :cond_4

    .line 122
    .line 123
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetsForPackageLocked(IILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    if-nez v6, :cond_5

    .line 136
    .line 137
    if-lez p2, :cond_6

    .line 138
    .line 139
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 143
    .line 144
    .line 145
    :cond_6
    monitor-exit v1

    .line 146
    goto :goto_5

    .line 147
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw p0

    .line 149
    :cond_7
    :goto_5
    return-void
.end method

.method public final onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackagesLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/util/ArraySet;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v3, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    move-object v2, v3

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 60
    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 66
    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    const/4 p0, 0x0

    .line 70
    iput-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 71
    .line 72
    iput-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->transactionError:Ljava/lang/String;

    .line 73
    .line 74
    :cond_3
    :goto_1
    return-void

    .line 75
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p0
.end method

.method public final partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "partiallyUpdateAppWidgetIds() "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "AppWidgetServiceImpl"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Pruning host "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "AppWidgetServiceImpl"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final queryIntentReceivers(ILandroid/content/Intent;)Ljava/util/List;
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithUnlockedParent(I)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const v2, 0x100c0080

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v2, 0x10000080

    .line 16
    .line 17
    .line 18
    :goto_0
    or-int/lit16 v2, v2, 0x400

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p2, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    int-to-long v6, v2

    .line 33
    move-object v4, p2

    .line 34
    move v8, p1

    .line 35
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public final readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    const-string/jumbo v3, "h"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v4, "p"

    .line 9
    .line 10
    .line 11
    const-string v5, "AppWidgetServiceImpl"

    .line 12
    .line 13
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    const/4 v8, -0x1

    .line 18
    const/4 v9, -0x1

    .line 19
    const/4 v10, -0x1

    .line 20
    :goto_0
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 21
    .line 22
    .line 23
    move-result v11

    .line 24
    const/4 v12, 0x2

    .line 25
    if-ne v11, v12, :cond_11

    .line 26
    .line 27
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v12

    .line 31
    const-string/jumbo v14, "gs"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v14

    .line 38
    const/4 v15, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    if-eqz v14, :cond_0

    .line 41
    .line 42
    const-string/jumbo v10, "version"

    .line 43
    .line 44
    .line 45
    invoke-interface {v7, v6, v10, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    move/from16 v16, v10

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    move-object v10, v4

    .line 53
    move v4, v11

    .line 54
    goto/16 :goto_a

    .line 55
    .line 56
    :catch_0
    move-exception v0

    .line 57
    move-object v1, v0

    .line 58
    goto/16 :goto_b

    .line 59
    .line 60
    :cond_0
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v14
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const-string/jumbo v15, "tag"

    .line 65
    .line 66
    .line 67
    const-string/jumbo v13, "pkg"

    .line 68
    .line 69
    .line 70
    if-eqz v14, :cond_8

    .line 71
    .line 72
    add-int/lit8 v8, v8, 0x1

    .line 73
    .line 74
    :try_start_1
    invoke-interface {v7, v6, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    const-string/jumbo v13, "cl"

    .line 79
    .line 80
    .line 81
    invoke-interface {v7, v6, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    invoke-virtual {v1, v2, v12, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getCanonicalPackageName(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    if-nez v12, :cond_1

    .line 90
    .line 91
    :goto_1
    move-object/from16 v19, v4

    .line 92
    .line 93
    move/from16 v16, v10

    .line 94
    .line 95
    move/from16 v18, v11

    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :cond_1
    invoke-virtual {v1, v2, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(ILjava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    if-gez v14, :cond_2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    new-instance v6, Landroid/content/ComponentName;

    .line 107
    .line 108
    invoke-direct {v6, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getProviderInfo(ILandroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    if-nez v13, :cond_3

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    move/from16 v16, v10

    .line 119
    .line 120
    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 121
    .line 122
    invoke-direct {v10, v14, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 126
    .line 127
    .line 128
    move-result-object v17

    .line 129
    if-nez v17, :cond_4

    .line 130
    .line 131
    move/from16 v18, v11

    .line 132
    .line 133
    new-instance v11, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    move-object/from16 v19, v4

    .line 139
    .line 140
    const-string/jumbo v4, "readProfileStateFromFileLocked mProviders size: "

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->i(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    move-object/from16 v19, v4

    .line 164
    .line 165
    move/from16 v18, v11

    .line 166
    .line 167
    :goto_2
    if-nez v17, :cond_5

    .line 168
    .line 169
    iget-boolean v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    .line 170
    .line 171
    if-eqz v4, :cond_5

    .line 172
    .line 173
    new-instance v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 174
    .line 175
    invoke-direct {v4}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object v6, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 179
    .line 180
    iput-object v13, v4, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 181
    .line 182
    new-instance v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 183
    .line 184
    invoke-direct {v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v11, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setPartialInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 188
    .line 189
    .line 190
    const/4 v4, 0x1

    .line 191
    iput-boolean v4, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 192
    .line 193
    iput-object v10, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 194
    .line 195
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 196
    .line 197
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v10, "Safe mode Provider is added "

    .line 206
    .line 207
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v10, " at "

    .line 214
    .line 215
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object v10, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 219
    .line 220
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_5
    move-object/from16 v11, v17

    .line 236
    .line 237
    :goto_3
    if-nez v11, :cond_6

    .line 238
    .line 239
    const/4 v4, 0x6

    .line 240
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    new-instance v10, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string/jumbo v11, "lookupProvider is failed, package: "

    .line 250
    .line 251
    .line 252
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v11, ", componentName: "

    .line 259
    .line 260
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v6, ", uid: "

    .line 267
    .line 268
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v6, ", mProviders size: "

    .line 275
    .line 276
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget-object v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 280
    .line 281
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->i(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance v6, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string/jumbo v10, "caller:"

    .line 301
    .line 302
    .line 303
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->i(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_6
    const/4 v4, 0x0

    .line 318
    invoke-interface {v7, v4, v15, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    iput v6, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 323
    .line 324
    const-string/jumbo v6, "info_tag"

    .line 325
    .line 326
    .line 327
    invoke-interface {v7, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    iput-object v6, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 332
    .line 333
    const-string/jumbo v6, "pending_deleted_ids"

    .line 334
    .line 335
    .line 336
    invoke-interface {v7, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    if-eqz v4, :cond_7

    .line 341
    .line 342
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    if-nez v6, :cond_7

    .line 347
    .line 348
    const-string v6, ","

    .line 349
    .line 350
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    const/4 v15, 0x0

    .line 355
    :goto_4
    array-length v6, v4

    .line 356
    if-ge v15, v6, :cond_7

    .line 357
    .line 358
    iget-object v6, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    .line 359
    .line 360
    aget-object v10, v4, v15

    .line 361
    .line 362
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    invoke-virtual {v6, v10}, Landroid/util/IntArray;->add(I)V

    .line 367
    .line 368
    .line 369
    add-int/lit8 v15, v15, 0x1

    .line 370
    .line 371
    goto :goto_4

    .line 372
    :cond_7
    :goto_5
    move/from16 v4, v18

    .line 373
    .line 374
    move-object/from16 v10, v19

    .line 375
    .line 376
    :goto_6
    const/4 v6, 0x1

    .line 377
    goto/16 :goto_a

    .line 378
    .line 379
    :cond_8
    move-object/from16 v19, v4

    .line 380
    .line 381
    move/from16 v16, v10

    .line 382
    .line 383
    move/from16 v18, v11

    .line 384
    .line 385
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 389
    const-string/jumbo v6, "id"

    .line 390
    .line 391
    .line 392
    if-eqz v4, :cond_b

    .line 393
    .line 394
    add-int/lit8 v9, v9, 0x1

    .line 395
    .line 396
    :try_start_2
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 397
    .line 398
    invoke-direct {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>()V

    .line 399
    .line 400
    .line 401
    const/4 v10, 0x0

    .line 402
    invoke-interface {v7, v10, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v11

    .line 406
    invoke-virtual {v1, v2, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(ILjava/lang/String;)I

    .line 407
    .line 408
    .line 409
    move-result v10

    .line 410
    if-gez v10, :cond_9

    .line 411
    .line 412
    const/4 v12, 0x1

    .line 413
    iput-boolean v12, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 414
    .line 415
    :cond_9
    iget-boolean v12, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 416
    .line 417
    if-eqz v12, :cond_a

    .line 418
    .line 419
    iget-boolean v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    .line 420
    .line 421
    if-eqz v12, :cond_7

    .line 422
    .line 423
    :cond_a
    const/4 v12, 0x0

    .line 424
    invoke-interface {v7, v12, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    move-result v6

    .line 428
    invoke-interface {v7, v12, v15, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 429
    .line 430
    .line 431
    move-result v12

    .line 432
    iput v12, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 433
    .line 434
    new-instance v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 435
    .line 436
    invoke-direct {v12, v10, v6, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 437
    .line 438
    .line 439
    iput-object v12, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 440
    .line 441
    iget-object v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 442
    .line 443
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    goto :goto_5

    .line 447
    :cond_b
    const-string v4, "b"

    .line 448
    .line 449
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    if-eqz v4, :cond_d

    .line 454
    .line 455
    const-string/jumbo v4, "packageName"

    .line 456
    .line 457
    .line 458
    const/4 v6, 0x0

    .line 459
    invoke-interface {v7, v6, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-virtual {v1, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(ILjava/lang/String;)I

    .line 464
    .line 465
    .line 466
    move-result v6

    .line 467
    if-ltz v6, :cond_c

    .line 468
    .line 469
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    invoke-static {v6, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    iget-object v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 478
    .line 479
    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    :cond_c
    move-object/from16 v10, v19

    .line 483
    .line 484
    goto :goto_9

    .line 485
    :cond_d
    const-string/jumbo v4, "g"

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    if-eqz v4, :cond_c

    .line 493
    .line 494
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 495
    .line 496
    invoke-direct {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>()V

    .line 497
    .line 498
    .line 499
    const/4 v10, 0x0

    .line 500
    invoke-interface {v7, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    move-result v6

    .line 504
    iput v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 505
    .line 506
    add-int/lit8 v6, v6, 0x1

    .line 507
    .line 508
    iget-object v10, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 509
    .line 510
    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 511
    .line 512
    .line 513
    move-result v10

    .line 514
    if-gez v10, :cond_e

    .line 515
    .line 516
    const/4 v10, 0x1

    .line 517
    goto :goto_7

    .line 518
    :cond_e
    iget-object v10, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 519
    .line 520
    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 521
    .line 522
    .line 523
    move-result v10

    .line 524
    :goto_7
    if-ge v10, v6, :cond_f

    .line 525
    .line 526
    iget-object v10, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 527
    .line 528
    invoke-virtual {v10, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 529
    .line 530
    .line 531
    :cond_f
    const-string/jumbo v6, "rid"

    .line 532
    .line 533
    .line 534
    const/4 v10, 0x0

    .line 535
    const/4 v11, 0x0

    .line 536
    invoke-interface {v7, v11, v6, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 537
    .line 538
    .line 539
    move-result v6

    .line 540
    iput v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 541
    .line 542
    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseWidgetIdOptions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    .line 543
    .line 544
    .line 545
    move-result-object v6

    .line 546
    iput-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 547
    .line 548
    invoke-interface {v7, v11, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    move-result v6

    .line 552
    move-object/from16 v10, v19

    .line 553
    .line 554
    invoke-interface {v7, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v12

    .line 558
    if-eqz v12, :cond_10

    .line 559
    .line 560
    invoke-interface {v7, v11, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    move-result v11

    .line 564
    goto :goto_8

    .line 565
    :cond_10
    const/4 v11, -0x1

    .line 566
    :goto_8
    new-instance v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    .line 567
    .line 568
    invoke-direct {v12, v4, v6, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;II)V

    .line 569
    .line 570
    .line 571
    move-object/from16 v4, p3

    .line 572
    .line 573
    check-cast v4, Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 576
    .line 577
    .line 578
    goto :goto_9

    .line 579
    :cond_11
    move/from16 v16, v10

    .line 580
    .line 581
    move/from16 v18, v11

    .line 582
    .line 583
    move-object v10, v4

    .line 584
    :goto_9
    move/from16 v4, v18

    .line 585
    .line 586
    goto/16 :goto_6

    .line 587
    .line 588
    :goto_a
    if-ne v4, v6, :cond_12

    .line 589
    .line 590
    return v16

    .line 591
    :cond_12
    move-object v4, v10

    .line 592
    move/from16 v10, v16

    .line 593
    .line 594
    goto/16 :goto_0

    .line 595
    .line 596
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    const-string/jumbo v4, "failed parsing "

    .line 599
    .line 600
    .line 601
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .line 613
    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    const-string v4, "Failed to read appwidgets.xml: "

    .line 617
    .line 618
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->i(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    new-instance v1, Ljava/io/File;

    .line 632
    .line 633
    const-string v3, "/data/log/dump_appwidgets.xml"

    .line 634
    .line 635
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 639
    .line 640
    .line 641
    move-result v4

    .line 642
    if-eqz v4, :cond_13

    .line 643
    .line 644
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 645
    .line 646
    .line 647
    goto :goto_c

    .line 648
    :catch_1
    move-exception v0

    .line 649
    move-object v4, v0

    .line 650
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 651
    .line 652
    .line 653
    :cond_13
    :goto_c
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 654
    .line 655
    .line 656
    goto :goto_d

    .line 657
    :catch_2
    move-exception v0

    .line 658
    move-object v1, v0

    .line 659
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 660
    .line 661
    .line 662
    :goto_d
    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    .line 663
    .line 664
    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 665
    .line 666
    .line 667
    :try_start_6
    new-instance v3, Ljava/io/File;

    .line 668
    .line 669
    invoke-static/range {p2 .. p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    const-string v4, "appwidgets.xml"

    .line 674
    .line 675
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    invoke-static {v2, v1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 683
    .line 684
    .line 685
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 686
    .line 687
    .line 688
    :goto_e
    const/4 v1, -0x1

    .line 689
    goto :goto_11

    .line 690
    :catch_3
    move-exception v0

    .line 691
    move-object v1, v0

    .line 692
    goto :goto_10

    .line 693
    :catchall_0
    move-exception v0

    .line 694
    move-object v2, v0

    .line 695
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 696
    .line 697
    .line 698
    goto :goto_f

    .line 699
    :catchall_1
    move-exception v0

    .line 700
    move-object v1, v0

    .line 701
    :try_start_9
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 702
    .line 703
    .line 704
    :goto_f
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 705
    :goto_10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 706
    .line 707
    .line 708
    goto :goto_e

    .line 709
    :goto_11
    return v1
.end method

.method public final registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "appWidgetIds"

    .line 19
    .line 20
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    iget-object p2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    :try_start_0
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x1

    .line 39
    const/high16 v6, 0xc000000

    .line 40
    .line 41
    invoke-static {p2, v5, v1, v6, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    iget p2, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 55
    .line 56
    sget v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    .line 57
    .line 58
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    int-to-long v0, p2

    .line 63
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 66
    .line 67
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;

    .line 68
    .line 69
    invoke-direct {v3, p0, v0, v1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;JLandroid/app/PendingIntent;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "add ="

    .line 78
    .line 79
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAlarmHistoryLocked(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    :goto_0
    return-void
.end method

.method public final reloadWidgetsMaskedState(I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    :try_start_0
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 16
    .line 17
    invoke-virtual {v5, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x1

    .line 22
    xor-int/2addr v5, v6

    .line 23
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    const/4 v10, 0x0

    .line 38
    move v11, v10

    .line 39
    :goto_0
    if-ge v11, v9, :cond_8

    .line 40
    .line 41
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v12, v0

    .line 48
    check-cast v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 49
    .line 50
    invoke-virtual {v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eq v0, v2, :cond_0

    .line 55
    .line 56
    goto/16 :goto_9

    .line 57
    .line 58
    :cond_0
    iget-boolean v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    .line 59
    .line 60
    iput-boolean v5, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    .line 61
    .line 62
    if-eq v5, v0, :cond_1

    .line 63
    .line 64
    move v0, v6

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v0, v10

    .line 67
    :goto_1
    iget-boolean v13, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    .line 68
    .line 69
    iput-boolean v7, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    .line 70
    .line 71
    if-eq v7, v13, :cond_2

    .line 72
    .line 73
    move v13, v6

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move v13, v10

    .line 76
    :goto_2
    or-int/2addr v0, v13

    .line 77
    iget-boolean v13, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuperLocked:Z

    .line 78
    .line 79
    iput-boolean v8, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuperLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    if-eq v8, v13, :cond_3

    .line 82
    .line 83
    move v13, v6

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    move v13, v10

    .line 86
    :goto_3
    or-int/2addr v13, v0

    .line 87
    :try_start_1
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 88
    .line 89
    iget-object v14, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 90
    .line 91
    iget-object v14, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 92
    .line 93
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    invoke-virtual {v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    invoke-interface {v0, v14, v15}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v14, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 106
    .line 107
    iget-object v15, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 108
    .line 109
    iget-object v15, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 110
    .line 111
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v15

    .line 115
    invoke-virtual {v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    invoke-interface {v14, v15, v6}, Landroid/content/pm/IPackageManager;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    .line 120
    .line 121
    .line 122
    move-result v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    goto :goto_4

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto :goto_a

    .line 126
    :catch_0
    move-exception v0

    .line 127
    goto :goto_7

    .line 128
    :catch_1
    move v0, v10

    .line 129
    move v6, v0

    .line 130
    :goto_4
    :try_start_2
    iget-boolean v14, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 131
    .line 132
    iput-boolean v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 133
    .line 134
    if-eq v0, v14, :cond_4

    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    goto :goto_5

    .line 138
    :cond_4
    move v0, v10

    .line 139
    :goto_5
    or-int/2addr v13, v0

    .line 140
    iget-boolean v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    .line 141
    .line 142
    iput-boolean v6, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    if-eq v6, v0, :cond_5

    .line 145
    .line 146
    const/4 v0, 0x1

    .line 147
    goto :goto_6

    .line 148
    :cond_5
    move v0, v10

    .line 149
    :goto_6
    or-int/2addr v0, v13

    .line 150
    goto :goto_8

    .line 151
    :goto_7
    :try_start_3
    const-string v6, "AppWidgetServiceImpl"

    .line 152
    .line 153
    const-string v14, "Failed to query application info"

    .line 154
    .line 155
    invoke-static {v6, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .line 157
    .line 158
    move v0, v13

    .line 159
    :goto_8
    if-eqz v0, :cond_7

    .line 160
    .line 161
    invoke-virtual {v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    const/4 v0, 0x0

    .line 168
    invoke-virtual {v1, v12, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 169
    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_6
    invoke-virtual {v1, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    .line 174
    .line 175
    :cond_7
    :goto_9
    add-int/lit8 v11, v11, 0x1

    .line 176
    .line 177
    const/4 v6, 0x1

    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :goto_a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    .line 186
    .line 187
    throw v0
.end method

.method public final reloadWidgetsMaskedStateForGroup(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    array-length v1, p1

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_1

    .line 25
    .line 26
    aget v3, p1, v2

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final removeHostsAndProvidersForPackageLocked(ILjava/lang/String;)Z
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "AppWidgetServiceImpl"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "removeHostsAndProvidersForPackageLocked() pkg="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " userId="

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v2, v0, -0x1

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_0
    const/4 v4, 0x1

    .line 43
    if-ltz v2, :cond_3

    .line 44
    .line 45
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 52
    .line 53
    if-nez v5, :cond_1

    .line 54
    .line 55
    const-string/jumbo v4, "removeProvidersForPackageLocked provider is null. i:"

    .line 56
    .line 57
    .line 58
    const-string v5, " size:"

    .line 59
    .line 60
    const-string/jumbo v6, "pkg: "

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v0, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v4, p2, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 72
    .line 73
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_2

    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-ne v6, p1, :cond_2

    .line 90
    .line 91
    const/4 v3, -0x1

    .line 92
    invoke-virtual {p0, v5, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    .line 93
    .line 94
    .line 95
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedPreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 101
    .line 102
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 103
    .line 104
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    .line 105
    .line 106
    check-cast v3, Landroid/util/ArrayMap;

    .line 107
    .line 108
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 112
    .line 113
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 114
    .line 115
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    .line 116
    .line 117
    check-cast v3, Landroid/util/ArrayMap;

    .line 118
    .line 119
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 123
    .line 124
    .line 125
    move v3, v4

    .line 126
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    sub-int/2addr v0, v4

    .line 136
    :goto_2
    if-ltz v0, :cond_5

    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 145
    .line 146
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 147
    .line 148
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_4

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-ne v2, p1, :cond_4

    .line 161
    .line 162
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 163
    .line 164
    .line 165
    move v3, v4

    .line 166
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_5
    return v3
.end method

.method public final removeTemplateWidgetPreview(Landroid/content/ComponentName;II)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string/jumbo v2, "removeTemplateWidgetPreview() "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureTemplateWidgetPropertyCombinationIsValid(II)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    const/4 v2, 0x1

    .line 33
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-direct {v3, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_6

    .line 50
    .line 51
    iget-object p1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateSizes:[I

    .line 52
    .line 53
    array-length v4, p1

    .line 54
    const/4 v5, 0x0

    .line 55
    move v6, v5

    .line 56
    move v7, v6

    .line 57
    :goto_0
    if-ge v6, v4, :cond_3

    .line 58
    .line 59
    aget v8, p1, v6

    .line 60
    .line 61
    and-int v9, p2, v8

    .line 62
    .line 63
    if-eqz v9, :cond_2

    .line 64
    .line 65
    iget-object v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 66
    .line 67
    array-length v10, p1

    .line 68
    shl-int v10, p3, v10

    .line 69
    .line 70
    or-int/2addr v8, v10

    .line 71
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    if-eqz v8, :cond_1

    .line 76
    .line 77
    move v8, v2

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v8, v5

    .line 80
    :goto_1
    or-int/2addr v7, v8

    .line 81
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    if-eqz v7, :cond_4

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->updateTemplatePreviewCategoriesLocked()V

    .line 87
    .line 88
    .line 89
    :cond_4
    if-eqz v7, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_3

    .line 97
    :cond_5
    :goto_2
    monitor-exit v1

    .line 98
    return-void

    .line 99
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, " is not a valid AppWidget provider"

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p0
.end method

.method public final removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AppWidgetServiceImpl"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "removeWidgetLocked() "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    const-string v0, "AppWidgetServiceImpl"

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo v2, "removeWidgetLocked, widget: "

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, ", widget id: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, ", Callers: "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x7

    .line 54
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 86
    .line 87
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackagesLock:Ljava/lang/Object;

    .line 94
    .line 95
    monitor-enter v3

    .line 96
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    .line 97
    .line 98
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    check-cast v4, Landroid/util/ArraySet;

    .line 103
    .line 104
    if-nez v4, :cond_2

    .line 105
    .line 106
    monitor-exit v3

    .line 107
    goto :goto_2

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :cond_2
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    move v6, v1

    .line 118
    :goto_0
    if-ge v6, v5, :cond_5

    .line 119
    .line 120
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 127
    .line 128
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 129
    .line 130
    if-nez v8, :cond_3

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-ne v8, v0, :cond_4

    .line 138
    .line 139
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 140
    .line 141
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 142
    .line 143
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 144
    .line 145
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_4

    .line 154
    .line 155
    monitor-exit v3

    .line 156
    goto :goto_2

    .line 157
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_5
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_2
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    iget-boolean v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->trackingUpdate:Z

    .line 171
    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    iput-boolean v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->trackingUpdate:Z

    .line 175
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v1, "Widget removed "

    .line 179
    .line 180
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v1, "AppWidgetServiceImpl"

    .line 195
    .line 196
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v1, "appwidget update-intent "

    .line 202
    .line 203
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 207
    .line 208
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 209
    .line 210
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iget v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 222
    .line 223
    const-wide/16 v4, 0x40

    .line 224
    .line 225
    invoke-static {v4, v5, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 226
    .line 227
    .line 228
    :cond_6
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 231
    .line 232
    .line 233
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 234
    .line 235
    if-eqz v0, :cond_8

    .line 236
    .line 237
    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 238
    .line 239
    if-nez v0, :cond_8

    .line 240
    .line 241
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 242
    .line 243
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 244
    .line 245
    if-eqz v1, :cond_8

    .line 246
    .line 247
    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 248
    .line 249
    if-eqz v0, :cond_7

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_7
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 257
    .line 258
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 259
    .line 260
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 261
    .line 262
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 263
    .line 264
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 269
    .line 270
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 271
    .line 272
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 273
    .line 274
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 275
    .line 276
    const/4 p1, 0x5

    .line 277
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 282
    .line 283
    .line 284
    :cond_8
    :goto_3
    return-void

    .line 285
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    throw p0
.end method

.method public final removeWidgetPreview(Landroid/content/ComponentName;I)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string/jumbo v2, "removeWidgetPreview() "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureWidgetCategoryCombinationIsValid(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    const/4 v2, 0x1

    .line 33
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-direct {v3, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_6

    .line 50
    .line 51
    sget-object p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->WIDGET_CATEGORY_FLAGS:[I

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    move v5, v4

    .line 55
    move v6, v5

    .line 56
    :goto_0
    const/4 v7, 0x3

    .line 57
    if-ge v5, v7, :cond_3

    .line 58
    .line 59
    aget v7, p1, v5

    .line 60
    .line 61
    and-int v8, p2, v7

    .line 62
    .line 63
    if-eqz v8, :cond_2

    .line 64
    .line 65
    iget-object v8, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->generatedPreviews:Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    if-eqz v7, :cond_1

    .line 72
    .line 73
    move v7, v2

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move v7, v4

    .line 76
    :goto_1
    or-int/2addr v6, v7

    .line 77
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    if-eqz v6, :cond_4

    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->updateGeneratedPreviewCategoriesLocked()V

    .line 83
    .line 84
    .line 85
    :cond_4
    if-eqz v6, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    :goto_2
    monitor-exit v1

    .line 94
    return-void

    .line 95
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, " is not a valid AppWidget provider"

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p0
.end method

.method public final removeWidgetsForPackageLocked(IILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string/jumbo v2, "removeWidgetsForPackageLocked provider is null. i:"

    .line 21
    .line 22
    .line 23
    const-string v3, " size:"

    .line 24
    .line 25
    const-string/jumbo v4, "pkg: "

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "AppWidgetServiceImpl"

    .line 33
    .line 34
    invoke-static {v2, p3, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ne v3, p1, :cond_1

    .line 57
    .line 58
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-lez v3, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0, v2, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-void
.end method

.method public final requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "AppWidgetServiceImpl"

    .line 14
    .line 15
    const-string/jumbo v1, "requestPinAppWidget() "

    .line 16
    .line 17
    .line 18
    invoke-static {v7, v1, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v8

    .line 24
    const/4 v9, 0x1

    .line 25
    :try_start_0
    invoke-virtual {p0, v7, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 33
    .line 34
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 35
    .line 36
    const-wide/16 v3, 0x0

    .line 37
    .line 38
    move v1, v6

    .line 39
    move v2, v7

    .line 40
    move-object v5, v10

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->isSameApp(IIJLjava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    const-string v3, "android.permission.CLEAR_APP_USER_DATA"

    .line 55
    .line 56
    invoke-virtual {v2, v3, v0, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 65
    .line 66
    const-wide/16 v3, 0x0

    .line 67
    .line 68
    invoke-virtual {v2, v10, v3, v4, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-direct {v0, v2, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    monitor-exit v8

    .line 79
    return v1

    .line 80
    :cond_2
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 81
    .line 82
    invoke-direct {v0, v6, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    if-eqz p2, :cond_5

    .line 90
    .line 91
    iget-boolean v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {p2, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget p0, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 103
    .line 104
    and-int/2addr p0, v9

    .line 105
    if-nez p0, :cond_4

    .line 106
    .line 107
    monitor-exit v8

    .line 108
    return v1

    .line 109
    :cond_4
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    const-class p0, Landroid/content/pm/ShortcutServiceInternal;

    .line 111
    .line 112
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    move-object v0, p0

    .line 117
    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 118
    .line 119
    move-object v1, p1

    .line 120
    move-object v3, p3

    .line 121
    move-object v4, p4

    .line 122
    move v5, v7

    .line 123
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    return p0

    .line 128
    :cond_5
    :goto_1
    :try_start_1
    monitor-exit v8

    .line 129
    return v1

    .line 130
    :goto_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    throw p0
.end method

.method public final resetPreviewRecord(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semPreviewRecordResetStates:I

    .line 39
    .line 40
    and-int/2addr v3, p1

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v4, "Reset "

    .line 46
    .line 47
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " preview record, "

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "AppWidgetServiceImpl"

    .line 72
    .line 73
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->getOrCreateRecord(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    const/4 v4, 0x0

    .line 89
    iput v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 90
    .line 91
    iput-wide v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    return-void
.end method

.method public final resolveHostUidLocked(ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 19
    .line 20
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 21
    .line 22
    const/4 v5, -0x1

    .line 23
    if-ne v4, v5, :cond_1

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    sget-boolean p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string/jumbo p2, "host "

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p2, " resolved to uid "

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p2, "AppWidgetServiceImpl"

    .line 63
    .line 64
    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    new-instance p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 68
    .line 69
    iget-object p2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 70
    .line 71
    iget v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    .line 72
    .line 73
    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-object p0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-void
.end method

.method public final restoreWidgetState(Ljava/lang/String;[BI)V
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v0, "BackupRestoreController"

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v5, "Restoring widget state for user:"

    .line 17
    .line 18
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v5, " package: "

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 40
    .line 41
    move-object/from16 v4, p2

    .line 42
    .line 43
    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v5, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-interface {v6, v0, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 70
    .line 71
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :cond_0
    :try_start_1
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v9, 0x2

    .line 79
    if-ne v0, v9, :cond_2

    .line 80
    .line 81
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    const-string/jumbo v11, "ws"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    const/4 v12, 0x0

    .line 93
    if-eqz v11, :cond_3

    .line 94
    .line 95
    const-string/jumbo v10, "version"

    .line 96
    .line 97
    .line 98
    invoke-interface {v6, v12, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    if-le v10, v9, :cond_1

    .line 103
    .line 104
    const-string v0, "BackupRestoreController"

    .line 105
    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v5, "Unable to process state version "

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :goto_0
    iget-object v0, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_a

    .line 133
    .line 134
    :catchall_0
    move-exception v0

    .line 135
    goto/16 :goto_9

    .line 136
    .line 137
    :cond_1
    :try_start_2
    const-string/jumbo v9, "pkg"

    .line 138
    .line 139
    .line 140
    invoke-interface {v6, v12, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-nez v9, :cond_2

    .line 149
    .line 150
    const-string v0, "BackupRestoreController"

    .line 151
    .line 152
    const-string v4, "Package mismatch in ws"

    .line 153
    .line 154
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    monitor-exit v7

    .line 158
    goto :goto_0

    .line 159
    :cond_2
    :goto_1
    const/4 v8, 0x1

    .line 160
    goto/16 :goto_8

    .line 161
    .line 162
    :cond_3
    const-string/jumbo v9, "p"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    const/4 v11, -0x1

    .line 170
    if-eqz v9, :cond_8

    .line 171
    .line 172
    const-string/jumbo v9, "pkg"

    .line 173
    .line 174
    .line 175
    invoke-interface {v6, v12, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    const-string/jumbo v10, "cl"

    .line 180
    .line 181
    .line 182
    invoke-interface {v6, v12, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    new-instance v12, Landroid/content/ComponentName;

    .line 187
    .line 188
    invoke-direct {v12, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 192
    .line 193
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 194
    .line 195
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    const/4 v13, 0x0

    .line 200
    :goto_2
    if-ge v13, v10, :cond_6

    .line 201
    .line 202
    iget-object v14, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 203
    .line 204
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v14

    .line 208
    check-cast v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 209
    .line 210
    if-nez v14, :cond_4

    .line 211
    .line 212
    const-string/jumbo v14, "findProviderLocked provider is null. i:"

    .line 213
    .line 214
    .line 215
    const-string v15, " size:"

    .line 216
    .line 217
    const-string v8, "BackupRestoreController"

    .line 218
    .line 219
    invoke-static {v13, v10, v14, v15, v8}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_4
    invoke-virtual {v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-ne v8, v2, :cond_5

    .line 228
    .line 229
    iget-object v8, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 230
    .line 231
    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 232
    .line 233
    invoke-virtual {v8, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-eqz v8, :cond_5

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_6
    const/4 v14, 0x0

    .line 244
    :goto_4
    if-nez v14, :cond_7

    .line 245
    .line 246
    new-instance v8, Landroid/appwidget/AppWidgetProviderInfo;

    .line 247
    .line 248
    invoke-direct {v8}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 249
    .line 250
    .line 251
    iput-object v12, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 252
    .line 253
    new-instance v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 254
    .line 255
    invoke-direct {v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>()V

    .line 256
    .line 257
    .line 258
    new-instance v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 259
    .line 260
    invoke-direct {v9, v11, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 261
    .line 262
    .line 263
    iput-object v9, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 264
    .line 265
    invoke-virtual {v14, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setPartialInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 266
    .line 267
    .line 268
    const/4 v8, 0x1

    .line 269
    iput-boolean v8, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 270
    .line 271
    iget-object v8, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 272
    .line 273
    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 274
    .line 275
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    const-string v8, "BackupRestoreController"

    .line 279
    .line 280
    new-instance v9, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    const-string/jumbo v10, "restoreWidgetState Provider is added "

    .line 286
    .line 287
    .line 288
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v10, " at "

    .line 295
    .line 296
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    iget-object v10, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 300
    .line 301
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 302
    .line 303
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    :cond_7
    const-string v8, "BackupRestoreController"

    .line 318
    .line 319
    new-instance v9, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string v10, "   provider "

    .line 325
    .line 326
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    iget-object v10, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 330
    .line 331
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v9

    .line 338
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :cond_8
    const-string/jumbo v8, "h"

    .line 347
    .line 348
    .line 349
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v8

    .line 353
    if-eqz v8, :cond_9

    .line 354
    .line 355
    const-string/jumbo v8, "pkg"

    .line 356
    .line 357
    .line 358
    invoke-interface {v6, v12, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    iget-object v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 363
    .line 364
    invoke-virtual {v9, v2, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(ILjava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v9

    .line 368
    const-string/jumbo v10, "id"

    .line 369
    .line 370
    .line 371
    invoke-interface {v6, v12, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    move-result v10

    .line 375
    new-instance v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 376
    .line 377
    invoke-direct {v11, v9, v10, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 378
    .line 379
    .line 380
    iget-object v8, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 381
    .line 382
    invoke-virtual {v8, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    const-string v9, "BackupRestoreController"

    .line 390
    .line 391
    new-instance v10, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    const-string v11, "   host["

    .line 397
    .line 398
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 402
    .line 403
    .line 404
    move-result v11

    .line 405
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const-string v11, "]: {"

    .line 409
    .line 410
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 414
    .line 415
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string/jumbo v8, "}"

    .line 419
    .line 420
    .line 421
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v8

    .line 428
    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    goto/16 :goto_1

    .line 432
    .line 433
    :cond_9
    const-string/jumbo v8, "g"

    .line 434
    .line 435
    .line 436
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v8

    .line 440
    if-eqz v8, :cond_2

    .line 441
    .line 442
    const-string/jumbo v8, "id"

    .line 443
    .line 444
    .line 445
    invoke-interface {v6, v12, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    move-result v8

    .line 449
    const-string/jumbo v9, "h"

    .line 450
    .line 451
    .line 452
    invoke-interface {v6, v12, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    move-result v9

    .line 456
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v9

    .line 460
    check-cast v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 461
    .line 462
    const-string/jumbo v10, "p"

    .line 463
    .line 464
    .line 465
    invoke-interface {v6, v12, v10, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 466
    .line 467
    .line 468
    move-result v10

    .line 469
    if-eq v10, v11, :cond_a

    .line 470
    .line 471
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v10

    .line 475
    move-object v12, v10

    .line 476
    check-cast v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 477
    .line 478
    :cond_a
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 479
    .line 480
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 481
    .line 482
    invoke-virtual {v3, v2, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->pruneWidgetStateLocked(ILjava/lang/String;)V

    .line 483
    .line 484
    .line 485
    if-eqz v12, :cond_b

    .line 486
    .line 487
    iget-object v10, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 488
    .line 489
    iget-object v10, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 490
    .line 491
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v10

    .line 495
    invoke-virtual {v3, v2, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->pruneWidgetStateLocked(ILjava/lang/String;)V

    .line 496
    .line 497
    .line 498
    :cond_b
    invoke-virtual {v3, v8, v9, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 499
    .line 500
    .line 501
    move-result-object v10

    .line 502
    if-nez v10, :cond_e

    .line 503
    .line 504
    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 505
    .line 506
    invoke-direct {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>()V

    .line 507
    .line 508
    .line 509
    iget-object v11, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 510
    .line 511
    iget-object v13, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 512
    .line 513
    invoke-virtual {v13, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 514
    .line 515
    .line 516
    move-result v13

    .line 517
    if-gez v13, :cond_c

    .line 518
    .line 519
    const/4 v13, 0x1

    .line 520
    :goto_5
    const/4 v14, 0x1

    .line 521
    goto :goto_6

    .line 522
    :cond_c
    iget-object v13, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 523
    .line 524
    invoke-virtual {v13, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 525
    .line 526
    .line 527
    move-result v13

    .line 528
    goto :goto_5

    .line 529
    :goto_6
    add-int/2addr v13, v14

    .line 530
    iget-object v11, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 531
    .line 532
    invoke-virtual {v11, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 533
    .line 534
    .line 535
    iput v13, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 536
    .line 537
    iput v8, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 538
    .line 539
    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseWidgetIdOptions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    .line 540
    .line 541
    .line 542
    move-result-object v11

    .line 543
    iput-object v11, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 544
    .line 545
    iput-object v9, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 546
    .line 547
    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    iput-object v12, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 553
    .line 554
    if-eqz v12, :cond_d

    .line 555
    .line 556
    iget-object v9, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 557
    .line 558
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    :cond_d
    const-string v9, "BackupRestoreController"

    .line 562
    .line 563
    new-instance v11, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .line 567
    .line 568
    const-string v12, "New restored id "

    .line 569
    .line 570
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    const-string v12, " now "

    .line 577
    .line 578
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v11

    .line 588
    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .line 590
    .line 591
    iget-object v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 592
    .line 593
    invoke-virtual {v9, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 594
    .line 595
    .line 596
    :cond_e
    iget-object v9, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 597
    .line 598
    if-eqz v9, :cond_f

    .line 599
    .line 600
    iget-object v11, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 601
    .line 602
    if-eqz v11, :cond_f

    .line 603
    .line 604
    iget v11, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 605
    .line 606
    invoke-virtual {v3, v9, v8, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V

    .line 607
    .line 608
    .line 609
    goto :goto_7

    .line 610
    :cond_f
    const-string v9, "BackupRestoreController"

    .line 611
    .line 612
    new-instance v11, Ljava/lang/StringBuilder;

    .line 613
    .line 614
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .line 616
    .line 617
    const-string v12, "Missing provider for restored widget "

    .line 618
    .line 619
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v11

    .line 629
    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    :goto_7
    iget-object v9, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 633
    .line 634
    iget v11, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 635
    .line 636
    invoke-virtual {v3, v9, v8, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V

    .line 637
    .line 638
    .line 639
    const-string v9, "BackupRestoreController"

    .line 640
    .line 641
    new-instance v11, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .line 645
    .line 646
    const-string v12, "   instance: "

    .line 647
    .line 648
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    const-string v8, " -> "

    .line 655
    .line 656
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    iget v8, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 660
    .line 661
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    const-string v8, " :: p="

    .line 665
    .line 666
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    iget-object v8, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 670
    .line 671
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v8

    .line 678
    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .line 680
    .line 681
    goto/16 :goto_1

    .line 682
    .line 683
    :goto_8
    if-ne v0, v8, :cond_0

    .line 684
    .line 685
    monitor-exit v7

    .line 686
    goto/16 :goto_0

    .line 687
    .line 688
    :goto_9
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 689
    :try_start_3
    throw v0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 690
    :catchall_1
    move-exception v0

    .line 691
    goto :goto_b

    .line 692
    :catch_0
    :try_start_4
    const-string v0, "BackupRestoreController"

    .line 693
    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .line 698
    .line 699
    const-string v5, "Unable to restore widget state for "

    .line 700
    .line 701
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 712
    .line 713
    .line 714
    goto/16 :goto_0

    .line 715
    .line 716
    :goto_a
    return-void

    .line 717
    :goto_b
    iget-object v1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 718
    .line 719
    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 720
    .line 721
    .line 722
    throw v0
.end method

.method public final saveGroupStateAsync(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/appwidget/flags/Flags;->removeAppWidgetServiceIoFromCriticalPath()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public final scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V
    .locals 4

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    .line 14
    .line 15
    invoke-virtual {v2, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-boolean v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 23
    .line 24
    if-nez v3, :cond_2

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 44
    .line 45
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 48
    .line 49
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 56
    .line 57
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 58
    .line 59
    iput p1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 60
    .line 61
    iput p2, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 64
    .line 65
    const/4 p1, 0x4

    .line 66
    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    return-void
.end method

.method public final scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz v0, :cond_3

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 24
    .line 25
    array-length v2, p1

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_1
    if-ge v3, v2, :cond_2

    .line 28
    .line 29
    aget v4, p1, v3

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ne v5, v4, :cond_1

    .line 36
    .line 37
    iget-boolean v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 38
    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 42
    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 53
    .line 54
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 57
    .line 58
    const/4 v3, 0x3

    .line 59
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    return-void
.end method

.method public final scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/util/SparseLongArray;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 18
    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 31
    .line 32
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 46
    .line 47
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 50
    .line 51
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 68
    .line 69
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 70
    .line 71
    iput p1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 74
    .line 75
    const/4 p1, 0x2

    .line 76
    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    return-void
.end method

.method public final scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-boolean v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->trackingUpdate:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iput-boolean v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->trackingUpdate:Z

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v4, "Widget update received "

    .line 19
    .line 20
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v4, "AppWidgetServiceImpl"

    .line 35
    .line 36
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "appwidget update-intent "

    .line 42
    .line 43
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 62
    .line 63
    const-wide/16 v5, 0x40

    .line 64
    .line 65
    invoke-static {v5, v6, v2, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    .line 69
    .line 70
    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 71
    .line 72
    .line 73
    :cond_1
    if-eqz p1, :cond_5

    .line 74
    .line 75
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 76
    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 80
    .line 81
    if-nez v2, :cond_5

    .line 82
    .line 83
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 84
    .line 85
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 86
    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 90
    .line 91
    if-nez v2, :cond_5

    .line 92
    .line 93
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->transactionError:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    if-eqz p2, :cond_3

    .line 99
    .line 100
    new-instance v2, Landroid/widget/RemoteViews;

    .line 101
    .line 102
    invoke-direct {v2, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->setProviderInstanceId(J)V

    .line 106
    .line 107
    .line 108
    move-object p2, v2

    .line 109
    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 114
    .line 115
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 116
    .line 117
    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 118
    .line 119
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 122
    .line 123
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 128
    .line 129
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 130
    .line 131
    iput p1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 132
    .line 133
    if-eqz p2, :cond_4

    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->isLegacyListRemoteViews()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 142
    .line 143
    const/4 p1, 0x6

    .line 144
    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_4
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    .line 153
    .line 154
    const/4 p1, 0x1

    .line 155
    invoke-virtual {p0, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    .line 161
    .line 162
    :cond_5
    :goto_0
    return-void
.end method

.method public final semCreateAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;
    .locals 10

    .line 1
    const-string v0, "Widget not bound "

    .line 2
    .line 3
    const-string v1, "Bad widget id "

    .line 4
    .line 5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    const-string v3, "AppWidgetServiceImpl"

    .line 14
    .line 15
    const-string/jumbo v4, "createAppWidgetConfigIntentSender() "

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v4, v3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v3

    .line 29
    const/4 v4, 0x1

    .line 30
    :try_start_0
    invoke-virtual {p0, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    and-int/lit16 p3, p3, -0xc4

    .line 48
    .line 49
    new-instance v6, Landroid/content/Intent;

    .line 50
    .line 51
    const-string v0, "android.appwidget.action.SEM_APPWIDGET_CONFIGURE"

    .line 52
    .line 53
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "appWidgetId"

    .line 57
    .line 58
    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 62
    .line 63
    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->semConfigure:Landroid/content/ComponentName;

    .line 64
    .line 65
    invoke-virtual {v6, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 72
    .line 73
    .line 74
    move-result-wide p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    new-instance v9, Landroid/os/UserHandle;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-direct {v9, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 84
    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    const/high16 v7, 0x54000000

    .line 88
    .line 89
    const/4 v8, 0x0

    .line 90
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 95
    .line 96
    .line 97
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    :try_start_2
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    monitor-exit v3

    .line 102
    return-object p0

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_0

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    throw p0
.end method

.method public final semSetSkipPackageChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSkipPackageName:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public final sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mInteractiveBroadcast:Landroid/os/Bundle;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move-object p0, v3

    .line 16
    :goto_0
    invoke-virtual {v2, p1, p2, v3, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 2

    .line 1
    const-string v0, "android.appwidget.action.APPWIDGET_DISABLED"

    .line 2
    .line 3
    const/high16 v1, 0x10000000

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 17
    .line 18
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 19
    .line 20
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final sendEnableAndUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIsCombinedBroadcastEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->isExtendedFromAppWidgetProvider:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLE_AND_UPDATE"

    .line 17
    .line 18
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "appWidgetIds"

    .line 22
    .line 23
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 27
    .line 28
    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 34
    .line 35
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 36
    .line 37
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 46
    .line 47
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    .line 48
    .line 49
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 60
    .line 61
    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 62
    .line 63
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[IZZ)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 3

    .line 1
    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    .line 2
    .line 3
    const/high16 v1, 0x10000000

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string v1, "appWidgetId"

    .line 19
    .line 20
    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string v1, "appWidgetOptions"

    .line 26
    .line 27
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProductDEV:Z

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string/jumbo v2, "sendOptionsChangedIntentLocked, widget = "

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", options = "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "AppWidgetServiceImpl"

    .line 62
    .line 63
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 69
    .line 70
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 71
    .line 72
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[IZZ)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "appWidgetIds"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    if-nez p4, :cond_0

    .line 21
    .line 22
    const/high16 p4, 0x10000000

    .line 23
    .line 24
    invoke-virtual {v0, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    :cond_0
    const/high16 p4, 0x4000000

    .line 28
    .line 29
    invoke-virtual {v0, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 36
    .line 37
    iget-object p2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 43
    .line 44
    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 45
    .line 46
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final setAppWidgetHidden(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string/jumbo v2, "setAppWidgetHidden() "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-direct {v0, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getWidgetUidsIfBound()Landroid/util/SparseArray;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManagerInternal;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    monitor-exit v1

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AppWidgetServiceImpl"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "setBindAppWidgetPermission() "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v2, "hasBindAppWidgetPermission packageName="

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v0

    .line 58
    const/4 v1, 0x1

    .line 59
    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(ILjava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-gez v1, :cond_1

    .line 67
    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p3, :cond_2

    .line 81
    .line 82
    iget-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 83
    .line 84
    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 89
    .line 90
    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 94
    .line 95
    .line 96
    monitor-exit v0

    .line 97
    return-void

    .line 98
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method

.method public final setTemplateWidgetPreview(Landroid/content/ComponentName;II[Landroid/widget/RemoteViews;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Api Calls are limited / limit info : "

    .line 6
    .line 7
    const-string/jumbo v3, "setTemplateWidgetPreview "

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    sget-boolean v5, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    const-string v5, "AppWidgetServiceImpl"

    .line 19
    .line 20
    const-string/jumbo v6, "setTemplateWidgetPreview() "

    .line 21
    .line 22
    .line 23
    invoke-static {v4, v6, v5}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 31
    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-virtual {v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static/range {p2 .. p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureTemplateWidgetPropertyCombinationIsValid(II)V

    .line 40
    .line 41
    .line 42
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v7

    .line 45
    const/4 v8, 0x1

    .line 46
    :try_start_0
    invoke-virtual {v0, v4, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 47
    .line 48
    .line 49
    new-instance v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    invoke-direct {v9, v10, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    if-eqz v10, :cond_3

    .line 63
    .line 64
    iget-object v11, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 65
    .line 66
    invoke-virtual {v11, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->getOrCreateRecord(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    if-eqz v11, :cond_1

    .line 71
    .line 72
    const-string v12, "AppWidgetServiceImpl"

    .line 73
    .line 74
    new-instance v13, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, " preview API Record : "

    .line 87
    .line 88
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->apiCallCount:I

    .line 92
    .line 93
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, " / "

    .line 97
    .line 98
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-wide v14, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter$ApiCallRecord;->lastResetTimeMs:J

    .line 102
    .line 103
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    goto :goto_1

    .line 116
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 117
    .line 118
    invoke-virtual {v1, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->tryApiCall(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_2

    .line 123
    .line 124
    move/from16 v1, p2

    .line 125
    .line 126
    move/from16 v9, p3

    .line 127
    .line 128
    move-object/from16 v11, p4

    .line 129
    .line 130
    invoke-virtual {v10, v1, v9, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setTemplatePreviewLocked(II[Landroid/widget/RemoteViews;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 134
    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v2, " t:"

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 154
    .line 155
    .line 156
    move-result-wide v2

    .line 157
    sub-long/2addr v2, v5

    .line 158
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersHistoryLocked(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    monitor-exit v7

    .line 169
    return v8

    .line 170
    :cond_2
    const-string v1, "AppWidgetServiceImpl"

    .line 171
    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 178
    .line 179
    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mMaxCallsPerInterval:I

    .line 180
    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v2, " / "

    .line 185
    .line 186
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 190
    .line 191
    iget-wide v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mResetIntervalMs:J

    .line 192
    .line 193
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    monitor-exit v7

    .line 204
    const/4 v0, 0x0

    .line 205
    return v0

    .line 206
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 207
    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, " is not a valid AppWidget provider"

    .line 217
    .line 218
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    throw v0
.end method

.method public final setWidgetPreview(Landroid/content/ComponentName;ILandroid/widget/RemoteViews;)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string/jumbo v2, "setWidgetPreview() "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureWidgetCategoryCombinationIsValid(I)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v3

    .line 36
    const/4 v4, 0x1

    .line 37
    :try_start_0
    invoke-virtual {p0, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-direct {v5, v6, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    if-eqz v6, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedPreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 56
    .line 57
    invoke-virtual {p1, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->tryApiCall(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/4 v5, 0x0

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    sget-object p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->WIDGET_CATEGORY_FLAGS:[I

    .line 65
    .line 66
    :goto_0
    const/4 v7, 0x3

    .line 67
    if-ge v5, v7, :cond_2

    .line 68
    .line 69
    aget v7, p1, v5

    .line 70
    .line 71
    and-int v8, p2, v7

    .line 72
    .line 73
    if-eqz v8, :cond_1

    .line 74
    .line 75
    iget-object v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->generatedPreviews:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {v8, v7, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->updateGeneratedPreviewCategoriesLocked()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo p2, "setWidgetPreview "

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p2, " t:"

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 113
    .line 114
    .line 115
    move-result-wide p2

    .line 116
    sub-long/2addr p2, v1

    .line 117
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersHistoryLocked(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    monitor-exit v3

    .line 128
    return v4

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    goto :goto_1

    .line 131
    :cond_3
    monitor-exit v3

    .line 132
    return v5

    .line 133
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, " is not a valid AppWidget provider"

    .line 144
    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    throw p0
.end method

.method public final startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    const-string v4, "Start listening : "

    .line 10
    .line 11
    const-string/jumbo v5, "startListening callbacks : "

    .line 12
    .line 13
    .line 14
    const-string/jumbo v6, "startListening callbacks : "

    .line 15
    .line 16
    .line 17
    const-string v7, "Instant package "

    .line 18
    .line 19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    sget-boolean v9, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 24
    .line 25
    if-eqz v9, :cond_0

    .line 26
    .line 27
    const-string v9, "AppWidgetServiceImpl"

    .line 28
    .line 29
    const-string/jumbo v10, "startListening() "

    .line 30
    .line 31
    .line 32
    invoke-static {v8, v10, v9}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v9, "AppWidgetServiceImpl"

    .line 37
    .line 38
    const-string/jumbo v10, "startListening() "

    .line 39
    .line 40
    .line 41
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 45
    .line 46
    invoke-virtual {v9, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v9

    .line 52
    :try_start_0
    iget-object v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 53
    .line 54
    invoke-virtual {v10, v8, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isInstantAppLocked(ILjava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_1

    .line 59
    .line 60
    const-string v0, "AppWidgetServiceImpl"

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, " cannot host app widgets"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    monitor-exit v9

    .line 87
    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_1
    const/4 v7, 0x1

    .line 92
    invoke-virtual {v0, v8, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 100
    .line 101
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    move/from16 v12, p3

    .line 106
    .line 107
    invoke-direct {v10, v11, v12, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iput-object v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 115
    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 117
    .line 118
    .line 119
    move-result-wide v11

    .line 120
    sub-long v13, v11, v7

    .line 121
    .line 122
    const-wide/16 v15, 0xbb8

    .line 123
    .line 124
    cmp-long v15, v13, v15

    .line 125
    .line 126
    if-lez v15, :cond_2

    .line 127
    .line 128
    const-string v5, "AppWidgetServiceImpl"

    .line 129
    .line 130
    new-instance v10, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, " intervalEnsure:"

    .line 139
    .line 140
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, " intervalHostLock:"

    .line 147
    .line 148
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_2
    const-string v6, "AppWidgetServiceImpl"

    .line 163
    .line 164
    new-instance v15, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, " intervalEnsure:"

    .line 173
    .line 174
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v1, " intervalHostLock:"

    .line 181
    .line 182
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v1, " LhostId:"

    .line 189
    .line 190
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 209
    .line 210
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v4, " "

    .line 214
    .line 215
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sget-object v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 231
    .line 232
    .line 233
    move-result-wide v4

    .line 234
    array-length v1, v3

    .line 235
    new-instance v6, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .line 239
    .line 240
    new-instance v7, Landroid/util/LongSparseArray;

    .line 241
    .line 242
    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 243
    .line 244
    .line 245
    const/4 v8, 0x0

    .line 246
    move v10, v8

    .line 247
    :goto_2
    if-ge v10, v1, :cond_4

    .line 248
    .line 249
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->clear()V

    .line 250
    .line 251
    .line 252
    iget-object v11, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 253
    .line 254
    aget v12, v3, v10

    .line 255
    .line 256
    invoke-virtual {v2, v11, v12, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getPendingUpdatesForIdLocked(Landroid/content/Context;ILandroid/util/LongSparseArray;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    .line 260
    .line 261
    .line 262
    move-result v11

    .line 263
    move v12, v8

    .line 264
    :goto_3
    if-ge v12, v11, :cond_3

    .line 265
    .line 266
    invoke-virtual {v7, v12}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v13

    .line 270
    check-cast v13, Landroid/appwidget/PendingHostUpdate;

    .line 271
    .line 272
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    add-int/lit8 v12, v12, 0x1

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_4
    iput-wide v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    .line 282
    .line 283
    const-string v0, "AppWidgetServiceImpl"

    .line 284
    .line 285
    const-string/jumbo v1, "startListening() finish"

    .line 286
    .line 287
    .line 288
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    .line 292
    .line 293
    invoke-direct {v0, v6}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 294
    .line 295
    .line 296
    monitor-exit v9

    .line 297
    return-object v0

    .line 298
    :goto_4
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    throw v0
.end method

.method public final stopListening(Ljava/lang/String;I)V
    .locals 5

    .line 1
    const-string v0, "Stop listening : "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "AppWidgetServiceImpl"

    .line 12
    .line 13
    const-string/jumbo v3, "stopListening() "

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v3, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    const/4 v3, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-direct {v1, v4, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getWidgetUidsIfBound()Landroid/util/SparseArray;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p2, v1, v3}, Landroid/app/AppOpsManagerInternal;->updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V

    .line 59
    .line 60
    .line 61
    const-string p2, "AppWidgetServiceImpl"

    .line 62
    .line 63
    const-string/jumbo v1, "stopListening callbacks : null"

    .line 64
    .line 65
    .line 66
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateHostHistoryLocked(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    monitor-exit v2

    .line 90
    return-void

    .line 91
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method

.method public final systemRestoreFinished(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "BackupRestoreController"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "systemRestoreFinished for "

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    const/4 v1, 0x1

    .line 32
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mHasSystemRestoreFinished:Z

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->maybeSendWidgetRestoreBroadcastsLocked(I)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final systemRestoreStarting(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "BackupRestoreController"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "System restore starting for user: "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    const/4 v1, 0x0

    .line 31
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mHasSystemRestoreFinished:Z

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedAppsPerUser:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedAppsPerUser:Landroid/util/SparseArray;

    .line 42
    .line 43
    new-instance v2, Landroid/util/ArraySet;

    .line 44
    .line 45
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedAppsPerUser:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/util/Set;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 70
    .line 71
    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final tagProvidersAndHosts()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    const-string/jumbo v3, "findProviderByTag provider is null. i:"

    .line 22
    .line 23
    .line 24
    const-string v4, " size:"

    .line 25
    .line 26
    const-string v5, "AppWidgetServiceImpl"

    .line 27
    .line 28
    invoke-static {v2, v0, v3, v4, v5}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iput v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 33
    .line 34
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_2
    if-ge v1, v0, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 52
    .line 53
    iput v1, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    return-void
.end method

.method public final unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    iput-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 24
    .line 25
    iput-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->transactionError:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 28
    .line 29
    invoke-virtual {p0, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public final updateAlarmHistoryLocked(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistoryIndex:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistory:[Ljava/lang/String;

    .line 11
    .line 12
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistoryIndex:I

    .line 13
    .line 14
    add-int/lit8 v3, v2, 0x1

    .line 15
    .line 16
    iput v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistoryIndex:I

    .line 17
    .line 18
    aput-object p1, v0, v2

    .line 19
    .line 20
    :cond_0
    iget p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistoryIndex:I

    .line 21
    .line 22
    if-lt p1, v1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmHistoryIndex:I

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateAppWidgetIds() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    return-void
.end method

.method public final updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V
    .locals 5

    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz p2, :cond_3

    .line 5
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_3

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 8
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 9
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    aget v3, p2, v2

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 12
    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 13
    invoke-virtual {p0, v3, p3, p4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method public final updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 8
    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 14
    .line 15
    if-nez v0, :cond_4

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    iget-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p3, p2}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 28
    .line 29
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const/16 p3, 0x3e8

    .line 38
    .line 39
    if-eq p2, p3, :cond_2

    .line 40
    .line 41
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    iget p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    .line 50
    .line 51
    if-gt p2, p3, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 p3, 0x0

    .line 55
    iput-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 56
    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string p3, "RemoteViews for widget update exceeds maximum bitmap memory usage (used: "

    .line 60
    .line 61
    const-string v0, ", max: "

    .line 62
    .line 63
    invoke-static {p2, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    .line 68
    .line 69
    const-string p3, ")"

    .line 70
    .line 71
    invoke-static {p0, p2, p3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_2
    :goto_1
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 80
    .line 81
    if-eqz p2, :cond_3

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 85
    .line 86
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    return-void
.end method

.method public final updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v1, "AppWidgetServiceImpl"

    .line 10
    .line 11
    const-string/jumbo v2, "updateAppWidgetOptions() "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string v1, "AppWidgetServiceImpl"

    .line 18
    .line 19
    const-string/jumbo v2, "updateAppWidgetOptions callingPackage :"

    .line 20
    .line 21
    .line 22
    const-string v3, ", appWidgetId : "

    .line 23
    .line 24
    const-string v4, ", options = "

    .line 25
    .line 26
    invoke-static {p2, v2, p1, v3, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v1

    .line 48
    const/4 v2, 0x1

    .line 49
    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 75
    .line 76
    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 79
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method

.method public final updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 5

    .line 1
    const-string v0, "Provider doesn\'t exist "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "AppWidgetServiceImpl"

    .line 12
    .line 13
    const-string/jumbo v3, "updateAppWidgetProvider() "

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v3, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v2

    .line 31
    const/4 v3, 0x1

    .line 32
    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-direct {v1, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    const-string p0, "AppWidgetServiceImpl"

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    monitor-exit v2

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v1, 0x0

    .line 78
    move v3, v1

    .line 79
    :goto_0
    if-ge v3, v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 86
    .line 87
    invoke-virtual {p0, v4, p2, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    monitor-exit v2

    .line 94
    return-void

    .line 95
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0
.end method

.method public final updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "Unable to parse "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-boolean v2, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "AppWidgetServiceImpl"

    .line 12
    .line 13
    const-string/jumbo v3, "updateAppWidgetProvider() "

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v3, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v2

    .line 31
    const/4 v3, 0x1

    .line 32
    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-direct {v4, v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-eqz v5, :cond_5

    .line 49
    .line 50
    iget-object p1, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    monitor-exit v2

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    if-nez p2, :cond_2

    .line 63
    .line 64
    const-string p1, "android.appwidget.provider"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move-object p1, p2

    .line 68
    :goto_0
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 71
    .line 72
    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 73
    .line 74
    invoke-static {v6, v4, v7, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Landroid/content/Context;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    iput-object v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 81
    .line 82
    iput-boolean v3, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->mInfoParsed:Z

    .line 83
    .line 84
    iput-object p2, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 85
    .line 86
    iget-object p1, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    const/4 p2, 0x0

    .line 93
    move v0, p2

    .line 94
    :goto_1
    if-ge v0, p1, :cond_3

    .line 95
    .line 96
    iget-object v3, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 103
    .line 104
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 105
    .line 106
    .line 107
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 108
    .line 109
    invoke-virtual {p0, v3, v4, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 119
    .line 120
    .line 121
    monitor-exit v2

    .line 122
    return-void

    .line 123
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 124
    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p1, " meta-data to a valid AppWidget provider"

    .line 134
    .line 135
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p1, " is not a valid AppWidget provider"

    .line 157
    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    throw p0
.end method

.method public final updateAppWidgetProviderInfoListWithAppSeparation(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSpm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSeparatedAppsList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-object p0
.end method

.method public final updateHostHistoryLocked(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistoryIdx:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistory:[Ljava/lang/String;

    .line 11
    .line 12
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistoryIdx:I

    .line 13
    .line 14
    add-int/lit8 v3, v2, 0x1

    .line 15
    .line 16
    iput v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistoryIdx:I

    .line 17
    .line 18
    aput-object p1, v0, v2

    .line 19
    .line 20
    :cond_0
    iget p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistoryIdx:I

    .line 21
    .line 22
    if-lt p1, v1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHostHistoryIdx:I

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final updateProvidersForPackageLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 15
    .line 16
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(ILandroid/content/Intent;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/4 v5, 0x0

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    move v6, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    :goto_0
    move v7, v5

    .line 36
    move v8, v7

    .line 37
    :goto_1
    const/4 v10, 0x0

    .line 38
    if-ge v7, v6, :cond_6

    .line 39
    .line 40
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 45
    .line 46
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 47
    .line 48
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 49
    .line 50
    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 51
    .line 52
    const/high16 v14, 0x40000

    .line 53
    .line 54
    and-int/2addr v13, v14

    .line 55
    if-eqz v13, :cond_2

    .line 56
    .line 57
    :cond_1
    move/from16 v12, p4

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_2
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    if-eqz v13, :cond_1

    .line 67
    .line 68
    new-instance v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 69
    .line 70
    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 71
    .line 72
    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 73
    .line 74
    new-instance v15, Landroid/content/ComponentName;

    .line 75
    .line 76
    iget-object v9, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v15, v9, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v13, v14, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    if-nez v9, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_1

    .line 97
    .line 98
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    :cond_3
    move/from16 v12, p4

    .line 102
    .line 103
    :goto_2
    const/4 v8, 0x1

    .line 104
    goto :goto_4

    .line 105
    :cond_4
    invoke-static {v13, v11, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createPartialProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Landroid/appwidget/AppWidgetProviderInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    if-eqz v8, :cond_3

    .line 110
    .line 111
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setPartialInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 115
    .line 116
    .line 117
    iget-object v8, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-lez v8, :cond_3

    .line 124
    .line 125
    iget-object v11, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-static {v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    invoke-virtual {v0, v9, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 132
    .line 133
    .line 134
    move v12, v5

    .line 135
    :goto_3
    if-ge v12, v8, :cond_5

    .line 136
    .line 137
    iget-object v13, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    check-cast v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 144
    .line 145
    iput-object v10, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 146
    .line 147
    invoke-virtual {v0, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v12, v12, 0x1

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    move/from16 v12, p4

    .line 154
    .line 155
    invoke-virtual {v0, v9, v11, v5, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[IZZ)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_6
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    add-int/lit8 v5, v4, -0x1

    .line 169
    .line 170
    :goto_5
    if-ltz v5, :cond_b

    .line 171
    .line 172
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 173
    .line 174
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 179
    .line 180
    if-nez v6, :cond_8

    .line 181
    .line 182
    if-lez v5, :cond_7

    .line 183
    .line 184
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 185
    .line 186
    add-int/lit8 v7, v5, -0x1

    .line 187
    .line 188
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    if-eqz v6, :cond_7

    .line 193
    .line 194
    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 195
    .line 196
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 201
    .line 202
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 203
    .line 204
    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 205
    .line 206
    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    goto :goto_6

    .line 211
    :cond_7
    move-object v6, v10

    .line 212
    :goto_6
    const-string/jumbo v7, "updateProvidersForPackageLocked provider is null size:"

    .line 213
    .line 214
    .line 215
    const-string v9, " index:"

    .line 216
    .line 217
    const-string v11, " prevComp:"

    .line 218
    .line 219
    invoke-static {v4, v5, v7, v9, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    const-string v7, "AppWidgetServiceImpl"

    .line 231
    .line 232
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    const/4 v6, 0x5

    .line 236
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    const-string/jumbo v9, "caller:"

    .line 241
    .line 242
    .line 243
    invoke-static {v9, v6, v7}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_8
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 248
    .line 249
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 250
    .line 251
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    if-eqz v7, :cond_a

    .line 260
    .line 261
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    if-ne v7, v2, :cond_a

    .line 266
    .line 267
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 268
    .line 269
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    if-nez v7, :cond_a

    .line 274
    .line 275
    if-eqz p2, :cond_9

    .line 276
    .line 277
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 278
    .line 279
    move-object/from16 v8, p2

    .line 280
    .line 281
    check-cast v8, Ljava/util/HashSet;

    .line 282
    .line 283
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    :cond_9
    const/4 v7, -0x1

    .line 287
    invoke-virtual {v0, v6, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    .line 288
    .line 289
    .line 290
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 291
    .line 292
    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedPreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 296
    .line 297
    iget-object v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 298
    .line 299
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    .line 300
    .line 301
    check-cast v7, Landroid/util/ArrayMap;

    .line 302
    .line 303
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mGeneratedTemplatePreviewsApiCounter:Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;

    .line 307
    .line 308
    iget-object v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 309
    .line 310
    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$ApiCounter;->mCallCount:Ljava/util/Map;

    .line 311
    .line 312
    check-cast v7, Landroid/util/ArrayMap;

    .line 313
    .line 314
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 318
    .line 319
    .line 320
    const/4 v8, 0x1

    .line 321
    :cond_a
    :goto_7
    add-int/lit8 v5, v5, -0x1

    .line 322
    .line 323
    goto/16 :goto_5

    .line 324
    .line 325
    :cond_b
    return v8
.end method

.method public final updateProvidersHistoryLocked(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistoryIndex:I

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistory:[Ljava/lang/String;

    .line 12
    .line 13
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistoryIndex:I

    .line 14
    .line 15
    add-int/lit8 v3, v2, 0x1

    .line 16
    .line 17
    iput v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistoryIndex:I

    .line 18
    .line 19
    aput-object p1, v0, v2

    .line 20
    .line 21
    :cond_0
    iget p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistoryIndex:I

    .line 22
    .line 23
    if-lt p1, v1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProvidersHistoryIndex:I

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final writeProfileStateToStreamLocked(Ljava/io/OutputStream;I)Z
    .locals 10

    .line 1
    const-string v0, "b"

    .line 2
    .line 3
    const-string v1, "AppWidgetServiceImpl"

    .line 4
    .line 5
    const-string/jumbo v2, "gs"

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-interface {p1, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    .line 21
    .line 22
    const-string/jumbo v4, "version"

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    invoke-interface {p1, v5, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    move v7, v3

    .line 36
    :goto_0
    if-ge v7, v4, :cond_2

    .line 37
    .line 38
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 45
    .line 46
    if-nez v8, :cond_0

    .line 47
    .line 48
    new-instance v8, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v9, "writeProfileStateToFileLocked provider is null. i:"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v9, " size:"

    .line 63
    .line 64
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception p0

    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eq v9, p2, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-static {p1, v8, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Z)V

    .line 89
    .line 90
    .line 91
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    move v7, v3

    .line 101
    :goto_2
    if-ge v7, v4, :cond_4

    .line 102
    .line 103
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 110
    .line 111
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eq v9, p2, :cond_3

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_3
    invoke-static {p1, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 119
    .line 120
    .line 121
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    move v7, v3

    .line 131
    :goto_4
    if-ge v7, v4, :cond_6

    .line 132
    .line 133
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 140
    .line 141
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 142
    .line 143
    invoke-virtual {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eq v9, p2, :cond_5

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_5
    invoke-static {p1, v8, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Z)V

    .line 151
    .line 152
    .line 153
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_6
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_8

    .line 167
    .line 168
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Landroid/util/Pair;

    .line 173
    .line 174
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v7, Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eq v7, p2, :cond_7

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_7
    invoke-interface {p1, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    .line 187
    .line 188
    const-string/jumbo v7, "packageName"

    .line 189
    .line 190
    .line 191
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v4, Ljava/lang/String;

    .line 194
    .line 195
    invoke-interface {p1, v5, v7, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    .line 197
    .line 198
    invoke-interface {p1, v5, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_8
    invoke-interface {p1, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    .line 204
    .line 205
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    .line 208
    return v6

    .line 209
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string p2, "Failed to write state: "

    .line 212
    .line 213
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    return v3
.end method

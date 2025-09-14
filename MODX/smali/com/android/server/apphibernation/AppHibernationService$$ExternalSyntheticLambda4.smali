.class public final synthetic Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/apphibernation/AppHibernationService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/apphibernation/UserLevelState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 6
    iput-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/apphibernation/UserLevelState;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    .line 5
    iget-object v12, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 7
    iget v13, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;->f$2:I

    .line 9
    iget-object v0, v0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda4;->f$3:Lcom/android/server/apphibernation/UserLevelState;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string/jumbo v2, "hibernatePackage"

    .line 17
    const-wide/32 v14, 0x80000

    .line 20
    invoke-static {v14, v15, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    move-result-wide v16

    .line 27
    :try_start_0
    iget-object v2, v1, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 29
    const-wide/32 v3, 0x200ca200

    .line 32
    invoke-interface {v2, v12, v3, v4, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 35
    move-result-object v2

    .line 36
    iget-object v3, v1, Lcom/android/server/apphibernation/AppHibernationService;->mStorageStatsManager:Landroid/app/usage/StorageStatsManager;

    .line 38
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 40
    new-instance v5, Landroid/os/UserHandle;

    .line 42
    invoke-direct {v5, v13}, Landroid/os/UserHandle;-><init>(I)V

    .line 45
    invoke-virtual {v3, v4, v12, v5}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    .line 48
    move-result-object v18

    .line 49
    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 55
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    iget-object v2, v1, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    .line 59
    const/16 v5, 0x3c

    .line 61
    const/4 v6, 0x1

    .line 62
    const/4 v7, 0x2

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v9, 0x3

    .line 65
    const-wide v10, 0x1cf7c5800L

    .line 70
    move-object v3, v12

    .line 71
    invoke-interface/range {v2 .. v11}, Landroid/app/IActivityManager;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    :try_start_2
    const-string v2, "AppHibernationService"

    .line 77
    const-string v3, "Couldn\'t set restriction state change"

    .line 79
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_6

    .line 85
    :catch_1
    move-exception v0

    .line 86
    goto :goto_2

    .line 87
    :catch_2
    move-exception v0

    .line 88
    goto :goto_3

    .line 89
    :catch_3
    move-exception v0

    .line 90
    goto :goto_5

    .line 91
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/android/server/apphibernation/AppHibernationService;->mIActivityManager:Landroid/app/IActivityManager;

    .line 93
    invoke-interface {v2, v12, v13}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 96
    iget-object v2, v1, Lcom/android/server/apphibernation/AppHibernationService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-interface {v2, v12, v13, v3}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 102
    iget-object v1, v1, Lcom/android/server/apphibernation/AppHibernationService;->mLock:Ljava/lang/Object;

    .line 104
    monitor-enter v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    .line 108
    move-result-wide v2

    .line 109
    iput-wide v2, v0, Lcom/android/server/apphibernation/UserLevelState;->savedByte:J

    .line 111
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    :goto_1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 118
    goto :goto_4

    .line 119
    :catchall_1
    move-exception v0

    .line 120
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 122
    :goto_2
    :try_start_6
    const-string v1, "AppHibernationService"

    .line 124
    const-string v2, "Storage device not found"

    .line 126
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    goto :goto_1

    .line 130
    :goto_3
    const-string v1, "AppHibernationService"

    .line 132
    const-string v2, "Package name not found when querying storage stats"

    .line 134
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    goto :goto_1

    .line 138
    :goto_4
    return-void

    .line 139
    :goto_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 141
    const-string v2, "Failed to hibernate due to manager not being available"

    .line 143
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 147
    :goto_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 153
    throw v0
.end method

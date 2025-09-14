.class public final Lcom/android/server/backup/restore/ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public mEnded:Z

.field public final mPackageName:Ljava/lang/String;

.field public mRestoreSets:Ljava/util/List;

.field public mTimedOut:Z

.field public final mTransportManager:Lcom/android/server/backup/TransportManager;

.field public final mTransportName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 12
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 14
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 16
    iget-object p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 18
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 20
    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 22
    iget p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 24
    iput p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    .line 26
    iput-object p4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 28
    return-void
.end method


# virtual methods
.method public final declared-synchronized endRestoreSession()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "RestoreSession"

    .line 4
    const-string/jumbo v1, "endRestoreSession"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string v0, "RestoreSession"

    .line 16
    const-string v1, "Session already timed out"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 27
    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 31
    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 33
    new-instance v2, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    .line 35
    invoke-direct {v2, v0, p0}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    .line 38
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    const-string v1, "Restore session already ended"

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :goto_0
    monitor-exit p0

    .line 52
    throw v0
.end method

.method public final declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 4
    iget-object p2, p2, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 6
    const-string v0, "android.permission.BACKUP"

    .line 8
    const-string/jumbo v1, "getAvailableRestoreSets"

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    if-eqz p1, :cond_3

    .line 16
    iget-boolean p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 18
    if-nez p2, :cond_2

    .line 20
    iget-boolean p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 22
    const/4 v0, -0x1

    .line 23
    if-eqz p2, :cond_0

    .line 25
    const-string p1, "RestoreSession"

    .line 27
    const-string p2, "Session already timed out"

    .line 29
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    .line 33
    return v0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    iget-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 42
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 44
    const-string v4, "RestoreSession.getAvailableRestoreSets()"

    .line 46
    invoke-virtual {p2, v3, v4}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 49
    move-result-object p2

    .line 50
    if-nez p2, :cond_1

    .line 52
    const-string p1, "RestoreSession"

    .line 54
    const-string p2, "Null transport client getting restore sets"

    .line 56
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    monitor-exit p0

    .line 63
    return v0

    .line 64
    :catchall_1
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception p1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 70
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 72
    const/16 v4, 0x8

    .line 74
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 79
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 81
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 84
    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 86
    new-instance v5, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;

    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-direct {v5, v4, p2, v3, v6}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;I)V

    .line 92
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 94
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 96
    new-instance v4, Lcom/android/server/backup/params/RestoreGetSetsParams;

    .line 98
    invoke-direct {v4, p2, p0, p1, v5}, Lcom/android/server/backup/params/RestoreGetSetsParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;)V

    .line 101
    const/4 p1, 0x6

    .line 102
    invoke-virtual {v3, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 105
    move-result-object p1

    .line 106
    iget-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 108
    iget-object p2, p2, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 110
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 113
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 116
    monitor-exit p0

    .line 117
    const/4 p0, 0x0

    .line 118
    return p0

    .line 119
    :goto_0
    :try_start_6
    const-string p2, "RestoreSession"

    .line 121
    const-string v3, "Error in getAvailableRestoreSets"

    .line 123
    invoke-static {p2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 126
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 129
    monitor-exit p0

    .line 130
    return v0

    .line 131
    :goto_1
    :try_start_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    throw p1

    .line 135
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 137
    const-string p2, "Restore session already ended"

    .line 139
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p1

    .line 143
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    const-string p2, "Observer must not be null"

    .line 147
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 151
    :goto_2
    monitor-exit p0

    .line 152
    throw p1
.end method

.method public getBackupEligibilityRules(Landroid/app/backup/RestoreSet;)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .locals 9

    .line 1
    iget-object v0, p1, Landroid/app/backup/RestoreSet;->device:Ljava/lang/String;

    .line 3
    const-string v1, "D2D"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v7

    .line 9
    invoke-static {}, Lcom/android/server/backup/Flags;->enableSkippingRestoreLaunchedApps()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 17
    invoke-virtual {p0, v7}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    iget p1, p1, Landroid/app/backup/RestoreSet;->backupTransportFlags:I

    .line 24
    and-int/lit8 p1, p1, 0x4

    .line 26
    if-eqz p1, :cond_1

    .line 28
    const/4 p1, 0x1

    .line 29
    :goto_0
    move v8, p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    new-instance p1, Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 35
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 37
    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 39
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 41
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    move-object v4, v0

    .line 46
    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 48
    iget v5, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    .line 50
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 52
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 54
    move-object v2, p1

    .line 55
    invoke-direct/range {v2 .. v8}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V

    .line 58
    return-object p1
.end method

.method public final declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .locals 11

    .line 1
    const-string v0, "Transport "

    .line 3
    const-string/jumbo v1, "restoreAll token="

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 9
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 11
    const-string v3, "android.permission.BACKUP"

    .line 13
    const-string/jumbo v4, "performRestore"

    .line 16
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v2, "RestoreSession"

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, " observer="

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-boolean v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 50
    if-nez v1, :cond_6

    .line 52
    iget-boolean v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 54
    const/4 v2, -0x1

    .line 55
    if-eqz v1, :cond_0

    .line 57
    const-string p1, "RestoreSession"

    .line 59
    const-string p2, "Session already timed out"

    .line 61
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    .line 65
    return v2

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto/16 :goto_2

    .line 69
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 71
    if-nez v1, :cond_1

    .line 73
    const-string p1, "RestoreSession"

    .line 75
    const-string p2, "Ignoring restoreAll() with no restore set"

    .line 77
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    monitor-exit p0

    .line 81
    return v2

    .line 82
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 84
    if-eqz v1, :cond_2

    .line 86
    const-string p1, "RestoreSession"

    .line 88
    const-string p2, "Ignoring restoreAll() on single-package session"

    .line 90
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    monitor-exit p0

    .line 94
    return v2

    .line 95
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 97
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v3}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_3

    .line 105
    const-string p1, "RestoreSession"

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 114
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string p3, " not registered"

    .line 119
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p2

    .line 126
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    monitor-exit p0

    .line 130
    return v2

    .line 131
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 133
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 135
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    const/4 v1, 0x0

    .line 137
    :goto_0
    :try_start_5
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 139
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 142
    move-result v3

    .line 143
    if-ge v1, v3, :cond_5

    .line 145
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 147
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Landroid/app/backup/RestoreSet;

    .line 153
    iget-wide v3, v3, Landroid/app/backup/RestoreSet;->token:J

    .line 155
    cmp-long v3, p1, v3

    .line 157
    if-nez v3, :cond_4

    .line 159
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 162
    move-result-wide v2

    .line 163
    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 165
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    move-result-object v1

    .line 169
    move-object v10, v1

    .line 170
    check-cast v10, Landroid/app/backup/RestoreSet;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 172
    :try_start_6
    new-instance v1, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;

    .line 174
    move-object v4, v1

    .line 175
    move-object v5, p0

    .line 176
    move-object v6, p3

    .line 177
    move-object v7, p4

    .line 178
    move-wide v8, p1

    .line 179
    invoke-direct/range {v4 .. v10}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/app/backup/RestoreSet;)V

    .line 182
    const-string p1, "RestoreSession.restoreAll()"

    .line 184
    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    .line 187
    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 188
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 192
    monitor-exit p0

    .line 193
    return p1

    .line 194
    :catchall_1
    move-exception p1

    .line 195
    goto :goto_1

    .line 196
    :catchall_2
    move-exception p1

    .line 197
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    throw p1

    .line 201
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 203
    goto :goto_0

    .line 204
    :cond_5
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 205
    :try_start_9
    const-string p3, "RestoreSession"

    .line 207
    new-instance p4, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    const-string v0, "Restore token "

    .line 214
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string p1, " not found"

    .line 226
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 233
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 236
    monitor-exit p0

    .line 237
    return v2

    .line 238
    :goto_1
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 239
    :try_start_b
    throw p1

    .line 240
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 242
    const-string p2, "Restore session already ended"

    .line 244
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 247
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 248
    :goto_2
    monitor-exit p0

    .line 249
    throw p1
.end method

.method public final declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const-string v1, "Asked to restore nonexistent pkg "

    .line 7
    const-string v9, "RestoreSession.restorePackage("

    .line 9
    const-string/jumbo v2, "restorePackage pkg="

    .line 12
    const-string v3, "Transport "

    .line 14
    const-string/jumbo v4, "restorePackage: bad packageName="

    .line 17
    const-string v5, "Ignoring attempt to restore pkg="

    .line 19
    const-string/jumbo v6, "restorePackage pkg="

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    const-string v7, "RestoreSession"

    .line 25
    new-instance v10, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v6, " obs="

    .line 35
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-object/from16 v6, p2

    .line 40
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v11, "monitor="

    .line 46
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-object/from16 v11, p3

    .line 51
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v10

    .line 58
    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-boolean v7, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 63
    if-nez v7, :cond_6

    .line 65
    iget-boolean v7, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 67
    const/4 v10, -0x1

    .line 68
    if-eqz v7, :cond_0

    .line 70
    const-string v0, "RestoreSession"

    .line 72
    const-string v1, "Session already timed out"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    .line 78
    return v10

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto/16 :goto_2

    .line 82
    :cond_0
    :try_start_1
    iget-object v7, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 84
    if-eqz v7, :cond_1

    .line 86
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v7

    .line 90
    if-nez v7, :cond_1

    .line 92
    const-string v1, "RestoreSession"

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v0, " on session for package "

    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit p0

    .line 120
    return v10

    .line 121
    :cond_1
    :try_start_2
    iget-object v5, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 123
    iget-object v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 125
    iget v7, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    .line 127
    const/4 v12, 0x0

    .line 128
    invoke-virtual {v5, v0, v12, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 131
    move-result-object v7
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :try_start_3
    iget-object v1, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 134
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 136
    const-string v5, "android.permission.BACKUP"

    .line 138
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 141
    move-result v12

    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 145
    move-result v13

    .line 146
    invoke-virtual {v1, v5, v12, v13}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 149
    move-result v1

    .line 150
    if-ne v1, v10, :cond_3

    .line 152
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 154
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 159
    move-result v5

    .line 160
    if-ne v1, v5, :cond_2

    .line 162
    goto :goto_0

    .line 163
    :cond_2
    const-string v1, "RestoreSession"

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v0, " or calling uid="

    .line 175
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 181
    move-result v0

    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Ljava/lang/SecurityException;

    .line 194
    const-string v1, "No permission to restore other packages"

    .line 196
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 199
    throw v0

    .line 200
    :cond_3
    :goto_0
    iget-object v1, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 202
    iget-object v4, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 204
    invoke-virtual {v1, v4}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_4

    .line 210
    const-string v0, "RestoreSession"

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v2, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v2, " not registered"

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v1

    .line 231
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    monitor-exit p0

    .line 235
    return v10

    .line 236
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 239
    move-result-wide v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    :try_start_5
    iget-object v1, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 242
    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    .line 245
    move-result-wide v14

    .line 246
    const-string v1, "RestoreSession"

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v2, " token="

    .line 258
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v2

    .line 272
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-wide/16 v1, 0x0

    .line 277
    cmp-long v1, v14, v1

    .line 279
    if-nez v1, :cond_5

    .line 281
    const-string v0, "RestoreSession"

    .line 283
    const-string v1, "No data available for this package; not restoring"

    .line 285
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 288
    :try_start_6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 291
    monitor-exit p0

    .line 292
    return v10

    .line 293
    :catchall_1
    move-exception v0

    .line 294
    goto :goto_1

    .line 295
    :cond_5
    :try_start_7
    new-instance v10, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;

    .line 297
    move-object v1, v10

    .line 298
    move-object/from16 v2, p0

    .line 300
    move-object/from16 v3, p2

    .line 302
    move-object/from16 v4, p3

    .line 304
    move-wide v5, v14

    .line 305
    invoke-direct/range {v1 .. v7}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;)V

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v0, ")"

    .line 318
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v8, v10, v0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    .line 328
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 329
    :try_start_8
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 332
    monitor-exit p0

    .line 333
    return v0

    .line 334
    :goto_1
    :try_start_9
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    throw v0

    .line 338
    :catch_0
    const-string v2, "RestoreSession"

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    .line 342
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    move-result-object v0

    .line 352
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 355
    monitor-exit p0

    .line 356
    return v10

    .line 357
    :cond_6
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 359
    const-string v1, "Restore session already ended"

    .line 361
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 364
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 365
    :goto_2
    monitor-exit p0

    .line 366
    throw v0
.end method

.method public final declared-synchronized restorePackages(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;Landroid/app/backup/IBackupManagerMonitor;)I
    .locals 14

    .line 1
    move-object v9, p0

    .line 2
    move-object/from16 v0, p4

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 7
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 9
    const-string v2, "android.permission.BACKUP"

    .line 11
    const-string/jumbo v3, "performRestore"

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const/16 v2, 0x80

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    const-string/jumbo v2, "restorePackages token="

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, " observer="

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    if-nez p3, :cond_0

    .line 44
    const-string/jumbo v2, "null"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto/16 :goto_7

    .line 54
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/app/backup/IRestoreObserver;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :goto_0
    const-string v2, " monitor="

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    if-nez p5, :cond_1

    .line 68
    const-string/jumbo v2, "null"

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-interface/range {p5 .. p5}, Landroid/app/backup/IBackupManagerMonitor;->toString()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :goto_1
    const-string v2, " packages="

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const/4 v2, 0x0

    .line 88
    if-nez v0, :cond_2

    .line 90
    const-string/jumbo v3, "null"

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    goto :goto_4

    .line 97
    :cond_2
    const/16 v3, 0x7b

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    array-length v3, v0

    .line 103
    const/4 v4, 0x1

    .line 104
    move v5, v2

    .line 105
    :goto_2
    if-ge v5, v3, :cond_4

    .line 107
    aget-object v6, v0, v5

    .line 109
    if-nez v4, :cond_3

    .line 111
    const-string v7, ", "

    .line 113
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    move v4, v2

    .line 118
    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    const/16 v3, 0x7d

    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    :goto_4
    const-string v3, "RestoreSession"

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-boolean v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 140
    if-nez v1, :cond_b

    .line 142
    iget-boolean v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 144
    const/4 v3, -0x1

    .line 145
    if-eqz v1, :cond_5

    .line 147
    const-string v0, "RestoreSession"

    .line 149
    const-string v1, "Session already timed out"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    .line 155
    return v3

    .line 156
    :cond_5
    :try_start_1
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 158
    if-nez v1, :cond_6

    .line 160
    const-string v0, "RestoreSession"

    .line 162
    const-string v1, "Ignoring restoreAll() with no restore set"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    monitor-exit p0

    .line 168
    return v3

    .line 169
    :cond_6
    :try_start_2
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 171
    if-eqz v1, :cond_7

    .line 173
    const-string v0, "RestoreSession"

    .line 175
    const-string v1, "Ignoring restoreAll() on single-package session"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    monitor-exit p0

    .line 181
    return v3

    .line 182
    :cond_7
    :try_start_3
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 184
    iget-object v4, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 186
    invoke-virtual {v1, v4}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_8

    .line 192
    const-string v0, "RestoreSession"

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    const-string v2, "Transport "

    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v2, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v2, " not registered"

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v1

    .line 218
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    monitor-exit p0

    .line 222
    return v3

    .line 223
    :cond_8
    :try_start_4
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 225
    iget-object v10, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 227
    monitor-enter v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    :goto_5
    :try_start_5
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 230
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 233
    move-result v1

    .line 234
    if-ge v2, v1, :cond_a

    .line 236
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 238
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Landroid/app/backup/RestoreSet;

    .line 244
    iget-wide v4, v1, Landroid/app/backup/RestoreSet;->token:J

    .line 246
    cmp-long v1, p1, v4

    .line 248
    if-nez v1, :cond_9

    .line 250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 253
    move-result-wide v11

    .line 254
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 256
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    move-result-object v1

    .line 260
    move-object v8, v1

    .line 261
    check-cast v8, Landroid/app/backup/RestoreSet;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 263
    :try_start_6
    new-instance v13, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;

    .line 265
    move-object v1, v13

    .line 266
    move-object v2, p0

    .line 267
    move-object/from16 v3, p3

    .line 269
    move-object/from16 v4, p5

    .line 271
    move-wide v5, p1

    .line 272
    move-object/from16 v7, p4

    .line 274
    invoke-direct/range {v1 .. v8}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Landroid/app/backup/RestoreSet;)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    const-string v2, "RestoreSession.restorePackages("

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    array-length v0, v0

    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    const-string v0, " packages)"

    .line 293
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {p0, v13, v0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    .line 303
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 304
    :try_start_7
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 308
    monitor-exit p0

    .line 309
    return v0

    .line 310
    :catchall_1
    move-exception v0

    .line 311
    goto :goto_6

    .line 312
    :catchall_2
    move-exception v0

    .line 313
    :try_start_8
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    throw v0

    .line 317
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 319
    goto :goto_5

    .line 320
    :cond_a
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 321
    :try_start_9
    const-string v0, "RestoreSession"

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    const-string v2, "Restore token "

    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v2, " not found"

    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object v1

    .line 349
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 352
    monitor-exit p0

    .line 353
    return v3

    .line 354
    :goto_6
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 355
    :try_start_b
    throw v0

    .line 356
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 358
    const-string v1, "Restore session already ended"

    .line 360
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 363
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 364
    :goto_7
    monitor-exit p0

    .line 365
    throw v0
.end method

.method public final sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, p2}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 8
    move-result-object p2

    .line 9
    if-nez p2, :cond_0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    const-string p2, "Transport "

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, " got unregistered"

    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    const-string p1, "RestoreSession"

    .line 34
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 p0, -0x1

    .line 38
    return p0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 41
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 43
    const/16 v1, 0x8

    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 50
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 52
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 55
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 57
    new-instance v2, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;

    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-direct {v2, p0, p2, v1, v3}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;I)V

    .line 63
    const/4 p0, 0x3

    .line 64
    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 67
    move-result-object p0

    .line 68
    invoke-interface {p1, p2, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    const/4 p0, 0x0

    .line 78
    return p0
.end method

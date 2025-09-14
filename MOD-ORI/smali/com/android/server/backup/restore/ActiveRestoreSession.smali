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

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 21
    .line 22
    iget p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 23
    .line 24
    iput p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    .line 25
    .line 26
    iput-object p4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 27
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

    .line 3
    .line 4
    const-string/jumbo v1, "endRestoreSession"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "RestoreSession"

    .line 15
    .line 16
    const-string v1, "Session already timed out"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
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

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 32
    .line 33
    new-instance v2, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    .line 34
    .line 35
    invoke-direct {v2, v0, p0}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "Restore session already ended"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
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

    .line 3
    .line 4
    iget-object p2, p2, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, "android.permission.BACKUP"

    .line 7
    .line 8
    const-string/jumbo v1, "getAvailableRestoreSets"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    iget-boolean p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 17
    .line 18
    if-nez p2, :cond_2

    .line 19
    .line 20
    iget-boolean p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    const-string p1, "RestoreSession"

    .line 26
    .line 27
    const-string p2, "Session already timed out"

    .line 28
    .line 29
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
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

    .line 37
    .line 38
    .line 39
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    iget-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 43
    .line 44
    const-string v4, "RestoreSession.getAvailableRestoreSets()"

    .line 45
    .line 46
    invoke-virtual {p2, v3, v4}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    const-string p1, "RestoreSession"

    .line 53
    .line 54
    const-string p2, "Null transport client getting restore sets"

    .line 55
    .line 56
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    .line 58
    .line 59
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    .line 61
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

    .line 69
    .line 70
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 71
    .line 72
    const/16 v4, 0x8

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 78
    .line 79
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 82
    .line 83
    .line 84
    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 85
    .line 86
    new-instance v5, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-direct {v5, v4, p2, v3, v6}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;I)V

    .line 90
    .line 91
    .line 92
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 93
    .line 94
    iget-object v3, v3, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 95
    .line 96
    new-instance v4, Lcom/android/server/backup/params/RestoreGetSetsParams;

    .line 97
    .line 98
    invoke-direct {v4, p2, p0, p1, v5}, Lcom/android/server/backup/params/RestoreGetSetsParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;)V

    .line 99
    .line 100
    .line 101
    const/4 p1, 0x6

    .line 102
    invoke-virtual {v3, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 107
    .line 108
    iget-object p2, p2, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    .line 112
    .line 113
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 114
    .line 115
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

    .line 120
    .line 121
    const-string v3, "Error in getAvailableRestoreSets"

    .line 122
    .line 123
    invoke-static {p2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 124
    .line 125
    .line 126
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 127
    .line 128
    .line 129
    monitor-exit p0

    .line 130
    return v0

    .line 131
    :goto_1
    :try_start_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    const-string p2, "Restore session already ended"

    .line 138
    .line 139
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 144
    .line 145
    const-string p2, "Observer must not be null"

    .line 146
    .line 147
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
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

    .line 2
    .line 3
    const-string v1, "D2D"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    invoke-static {}, Lcom/android/server/backup/Flags;->enableSkippingRestoreLaunchedApps()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 16
    .line 17
    invoke-virtual {p0, v7}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    iget p1, p1, Landroid/app/backup/RestoreSet;->backupTransportFlags:I

    .line 23
    .line 24
    and-int/lit8 p1, p1, 0x4

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
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

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v4, v0

    .line 46
    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 47
    .line 48
    iget v5, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 51
    .line 52
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    move-object v2, p1

    .line 55
    invoke-direct/range {v2 .. v8}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V

    .line 56
    .line 57
    .line 58
    return-object p1
.end method

.method public final declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .locals 11

    .line 1
    const-string v0, "Transport "

    .line 2
    .line 3
    const-string/jumbo v1, "restoreAll token="

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v3, "android.permission.BACKUP"

    .line 12
    .line 13
    const-string/jumbo v4, "performRestore"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "RestoreSession"

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " observer="

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 49
    .line 50
    if-nez v1, :cond_6

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 53
    .line 54
    const/4 v2, -0x1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const-string p1, "RestoreSession"

    .line 58
    .line 59
    const-string p2, "Session already timed out"

    .line 60
    .line 61
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit p0

    .line 65
    return v2

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    const-string p1, "RestoreSession"

    .line 74
    .line 75
    const-string p2, "Ignoring restoreAll() with no restore set"

    .line 76
    .line 77
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return v2

    .line 82
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    const-string p1, "RestoreSession"

    .line 87
    .line 88
    const-string p2, "Ignoring restoreAll() on single-package session"

    .line 89
    .line 90
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    .line 93
    monitor-exit p0

    .line 94
    return v2

    .line 95
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_3

    .line 104
    .line 105
    const-string p1, "RestoreSession"

    .line 106
    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string p3, " not registered"

    .line 118
    .line 119
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    .line 128
    .line 129
    monitor-exit p0

    .line 130
    return v2

    .line 131
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 134
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

    .line 138
    .line 139
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-ge v1, v3, :cond_5

    .line 144
    .line 145
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 146
    .line 147
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Landroid/app/backup/RestoreSet;

    .line 152
    .line 153
    iget-wide v3, v3, Landroid/app/backup/RestoreSet;->token:J

    .line 154
    .line 155
    cmp-long v3, p1, v3

    .line 156
    .line 157
    if-nez v3, :cond_4

    .line 158
    .line 159
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 160
    .line 161
    .line 162
    move-result-wide v2

    .line 163
    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 164
    .line 165
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    move-object v10, v1

    .line 170
    check-cast v10, Landroid/app/backup/RestoreSet;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 171
    .line 172
    :try_start_6
    new-instance v1, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;

    .line 173
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

    .line 180
    .line 181
    .line 182
    const-string p1, "RestoreSession.restoreAll()"

    .line 183
    .line 184
    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 188
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    .line 190
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

    .line 198
    .line 199
    .line 200
    throw p1

    .line 201
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 202
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

    .line 206
    .line 207
    new-instance p4, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v0, "Restore token "

    .line 213
    .line 214
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string p1, " not found"

    .line 225
    .line 226
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 234
    .line 235
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

    .line 241
    .line 242
    const-string p2, "Restore session already ended"

    .line 243
    .line 244
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
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

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v1, "Asked to restore nonexistent pkg "

    .line 6
    .line 7
    const-string v9, "RestoreSession.restorePackage("

    .line 8
    .line 9
    const-string/jumbo v2, "restorePackage pkg="

    .line 10
    .line 11
    .line 12
    const-string v3, "Transport "

    .line 13
    .line 14
    const-string/jumbo v4, "restorePackage: bad packageName="

    .line 15
    .line 16
    .line 17
    const-string v5, "Ignoring attempt to restore pkg="

    .line 18
    .line 19
    const-string/jumbo v6, "restorePackage pkg="

    .line 20
    .line 21
    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    const-string v7, "RestoreSession"

    .line 24
    .line 25
    new-instance v10, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v6, " obs="

    .line 34
    .line 35
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-object/from16 v6, p2

    .line 39
    .line 40
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v11, "monitor="

    .line 44
    .line 45
    .line 46
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-object/from16 v11, p3

    .line 50
    .line 51
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    invoke-static {v7, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-boolean v7, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 62
    .line 63
    if-nez v7, :cond_6

    .line 64
    .line 65
    iget-boolean v7, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 66
    .line 67
    const/4 v10, -0x1

    .line 68
    if-eqz v7, :cond_0

    .line 69
    .line 70
    const-string v0, "RestoreSession"

    .line 71
    .line 72
    const-string v1, "Session already timed out"

    .line 73
    .line 74
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return v10

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_0
    :try_start_1
    iget-object v7, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v7, :cond_1

    .line 85
    .line 86
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-nez v7, :cond_1

    .line 91
    .line 92
    const-string v1, "RestoreSession"

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v0, " on session for package "

    .line 103
    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v0, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    monitor-exit p0

    .line 120
    return v10

    .line 121
    :cond_1
    :try_start_2
    iget-object v5, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 122
    .line 123
    iget-object v5, v5, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 124
    .line 125
    iget v7, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    .line 126
    .line 127
    const/4 v12, 0x0

    .line 128
    invoke-virtual {v5, v0, v12, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 129
    .line 130
    .line 131
    move-result-object v7
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :try_start_3
    iget-object v1, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    const-string v5, "android.permission.BACKUP"

    .line 137
    .line 138
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    invoke-virtual {v1, v5, v12, v13}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-ne v1, v10, :cond_3

    .line 151
    .line 152
    iget-object v1, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 153
    .line 154
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 155
    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-ne v1, v5, :cond_2

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_2
    const-string v1, "RestoreSession"

    .line 164
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v0, " or calling uid="

    .line 174
    .line 175
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    new-instance v0, Ljava/lang/SecurityException;

    .line 193
    .line 194
    const-string v1, "No permission to restore other packages"

    .line 195
    .line 196
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v0

    .line 200
    :cond_3
    :goto_0
    iget-object v1, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 201
    .line 202
    iget-object v4, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v1, v4}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_4

    .line 209
    .line 210
    const-string v0, "RestoreSession"

    .line 211
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v2, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v2, " not registered"

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    .line 233
    .line 234
    monitor-exit p0

    .line 235
    return v10

    .line 236
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 237
    .line 238
    .line 239
    move-result-wide v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    :try_start_5
    iget-object v1, v8, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 241
    .line 242
    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    .line 243
    .line 244
    .line 245
    move-result-wide v14

    .line 246
    const-string v1, "RestoreSession"

    .line 247
    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v2, " token="

    .line 257
    .line 258
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    const-wide/16 v1, 0x0

    .line 276
    .line 277
    cmp-long v1, v14, v1

    .line 278
    .line 279
    if-nez v1, :cond_5

    .line 280
    .line 281
    const-string v0, "RestoreSession"

    .line 282
    .line 283
    const-string v1, "No data available for this package; not restoring"

    .line 284
    .line 285
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 286
    .line 287
    .line 288
    :try_start_6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 289
    .line 290
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

    .line 296
    .line 297
    move-object v1, v10

    .line 298
    move-object/from16 v2, p0

    .line 299
    .line 300
    move-object/from16 v3, p2

    .line 301
    .line 302
    move-object/from16 v4, p3

    .line 303
    .line 304
    move-wide v5, v14

    .line 305
    invoke-direct/range {v1 .. v7}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;)V

    .line 306
    .line 307
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v0, ")"

    .line 317
    .line 318
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v8, v10, v0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 329
    :try_start_8
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 330
    .line 331
    .line 332
    monitor-exit p0

    .line 333
    return v0

    .line 334
    :goto_1
    :try_start_9
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    .line 336
    .line 337
    throw v0

    .line 338
    :catch_0
    const-string v2, "RestoreSession"

    .line 339
    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 353
    .line 354
    .line 355
    monitor-exit p0

    .line 356
    return v10

    .line 357
    :cond_6
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 358
    .line 359
    const-string v1, "Restore session already ended"

    .line 360
    .line 361
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
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

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v2, "android.permission.BACKUP"

    .line 10
    .line 11
    const-string/jumbo v3, "performRestore"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const/16 v2, 0x80

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v2, "restorePackages token="

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " observer="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    if-nez p3, :cond_0

    .line 43
    .line 44
    const-string/jumbo v2, "null"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/app/backup/IRestoreObserver;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :goto_0
    const-string v2, " monitor="

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    if-nez p5, :cond_1

    .line 67
    .line 68
    const-string/jumbo v2, "null"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-interface/range {p5 .. p5}, Landroid/app/backup/IBackupManagerMonitor;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    :goto_1
    const-string v2, " packages="

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    const-string/jumbo v3, "null"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_2
    const/16 v3, 0x7b

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    array-length v3, v0

    .line 103
    const/4 v4, 0x1

    .line 104
    move v5, v2

    .line 105
    :goto_2
    if-ge v5, v3, :cond_4

    .line 106
    .line 107
    aget-object v6, v0, v5

    .line 108
    .line 109
    if-nez v4, :cond_3

    .line 110
    .line 111
    const-string v7, ", "

    .line 112
    .line 113
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    move v4, v2

    .line 118
    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    const/16 v3, 0x7d

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    :goto_4
    const-string v3, "RestoreSession"

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    iget-boolean v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 139
    .line 140
    if-nez v1, :cond_b

    .line 141
    .line 142
    iget-boolean v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 143
    .line 144
    const/4 v3, -0x1

    .line 145
    if-eqz v1, :cond_5

    .line 146
    .line 147
    const-string v0, "RestoreSession"

    .line 148
    .line 149
    const-string v1, "Session already timed out"

    .line 150
    .line 151
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    monitor-exit p0

    .line 155
    return v3

    .line 156
    :cond_5
    :try_start_1
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 157
    .line 158
    if-nez v1, :cond_6

    .line 159
    .line 160
    const-string v0, "RestoreSession"

    .line 161
    .line 162
    const-string v1, "Ignoring restoreAll() with no restore set"

    .line 163
    .line 164
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    monitor-exit p0

    .line 168
    return v3

    .line 169
    :cond_6
    :try_start_2
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 170
    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    const-string v0, "RestoreSession"

    .line 174
    .line 175
    const-string v1, "Ignoring restoreAll() on single-package session"

    .line 176
    .line 177
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    .line 179
    .line 180
    monitor-exit p0

    .line 181
    return v3

    .line 182
    :cond_7
    :try_start_3
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 183
    .line 184
    iget-object v4, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v1, v4}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_8

    .line 191
    .line 192
    const-string v0, "RestoreSession"

    .line 193
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v2, "Transport "

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object v2, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v2, " not registered"

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    .line 220
    .line 221
    monitor-exit p0

    .line 222
    return v3

    .line 223
    :cond_8
    :try_start_4
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 224
    .line 225
    iget-object v10, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 226
    .line 227
    monitor-enter v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    :goto_5
    :try_start_5
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 229
    .line 230
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-ge v2, v1, :cond_a

    .line 235
    .line 236
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 237
    .line 238
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Landroid/app/backup/RestoreSet;

    .line 243
    .line 244
    iget-wide v4, v1, Landroid/app/backup/RestoreSet;->token:J

    .line 245
    .line 246
    cmp-long v1, p1, v4

    .line 247
    .line 248
    if-nez v1, :cond_9

    .line 249
    .line 250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 251
    .line 252
    .line 253
    move-result-wide v11

    .line 254
    iget-object v1, v9, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:Ljava/util/List;

    .line 255
    .line 256
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    move-object v8, v1

    .line 261
    check-cast v8, Landroid/app/backup/RestoreSet;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 262
    .line 263
    :try_start_6
    new-instance v13, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;

    .line 264
    .line 265
    move-object v1, v13

    .line 266
    move-object v2, p0

    .line 267
    move-object/from16 v3, p3

    .line 268
    .line 269
    move-object/from16 v4, p5

    .line 270
    .line 271
    move-wide v5, p1

    .line 272
    move-object/from16 v7, p4

    .line 273
    .line 274
    invoke-direct/range {v1 .. v8}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Landroid/app/backup/RestoreSet;)V

    .line 275
    .line 276
    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v2, "RestoreSession.restorePackages("

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    array-length v0, v0

    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v0, " packages)"

    .line 292
    .line 293
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {p0, v13, v0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 304
    :try_start_7
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    .line 306
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

    .line 314
    .line 315
    .line 316
    throw v0

    .line 317
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 318
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

    .line 322
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    const-string v2, "Restore token "

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string v2, " not found"

    .line 341
    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 350
    .line 351
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

    .line 357
    .line 358
    const-string v1, "Restore session already ended"

    .line 359
    .line 360
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
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

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p2}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p2, "Transport "

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, " got unregistered"

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "RestoreSession"

    .line 33
    .line 34
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const/4 p0, -0x1

    .line 38
    return p0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 56
    .line 57
    new-instance v2, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-direct {v2, p0, p2, v1, v3}, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;I)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x3

    .line 64
    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-interface {p1, p2, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    return p0
.end method

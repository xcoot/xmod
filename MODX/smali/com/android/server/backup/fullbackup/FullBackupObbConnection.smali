.class public final Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public volatile mService:Lcom/android/internal/backup/IObbBackupService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 9
    iget-object p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 11
    const-string v0, "Timeout parameters cannot be null"

    .line 13
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 19
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 21
    return-void
.end method


# virtual methods
.method public final backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z
    .locals 13

    .line 1
    const-string v0, "I/O error closing down OBB backup"

    .line 3
    const-string v1, "BackupManagerService"

    .line 5
    const-string v2, "Unable to back up OBBs for "

    .line 7
    monitor-enter p0

    .line 8
    :catch_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v3, :cond_0

    .line 12
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto/16 :goto_b

    .line 19
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    :try_start_3
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 26
    move-result-object v5

    .line 27
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 29
    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 32
    move-result v6

    .line 33
    iget-object v7, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 35
    invoke-virtual {v7}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    .line 38
    move-result-wide v9

    .line 39
    iget-object v7, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 41
    const/4 v11, 0x0

    .line 42
    const/4 v12, 0x0

    .line 43
    move v8, v6

    .line 44
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 47
    iget-object v7, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 49
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 51
    aget-object v9, v5, v3

    .line 53
    iget-object v10, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 55
    iget-object v10, v10, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 57
    invoke-interface {v7, v8, v9, v6, v10}, Lcom/android/internal/backup/IObbBackupService;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 60
    aget-object v7, v5, v4

    .line 62
    invoke-static {v7, p2}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 65
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 67
    invoke-virtual {p0, v6}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    .line 70
    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 74
    aget-object p1, v5, v4

    .line 76
    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 81
    goto :goto_1

    .line 82
    :catch_1
    move-exception p1

    .line 83
    goto :goto_2

    .line 84
    :cond_1
    :goto_1
    aget-object p1, v5, v3

    .line 86
    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 91
    goto :goto_3

    .line 92
    :goto_2
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_2
    :goto_3
    move v4, p0

    .line 96
    goto :goto_6

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    goto :goto_7

    .line 99
    :catch_2
    move-exception p0

    .line 100
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 115
    :try_start_6
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 118
    if-eqz v5, :cond_4

    .line 120
    aget-object p0, v5, v4

    .line 122
    if-eqz p0, :cond_3

    .line 124
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 127
    goto :goto_4

    .line 128
    :catch_3
    move-exception p0

    .line 129
    goto :goto_5

    .line 130
    :cond_3
    :goto_4
    aget-object p0, v5, v3

    .line 132
    if-eqz p0, :cond_4

    .line 134
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 137
    goto :goto_6

    .line 138
    :goto_5
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_4
    :goto_6
    return v4

    .line 142
    :goto_7
    :try_start_7
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 145
    if-eqz v5, :cond_6

    .line 147
    aget-object p1, v5, v4

    .line 149
    if-eqz p1, :cond_5

    .line 151
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 154
    goto :goto_8

    .line 155
    :catch_4
    move-exception p1

    .line 156
    goto :goto_9

    .line 157
    :cond_5
    :goto_8
    aget-object p1, v5, v3

    .line 159
    if-eqz p1, :cond_6

    .line 161
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 164
    goto :goto_a

    .line 165
    :goto_9
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_6
    :goto_a
    throw p0

    .line 169
    :goto_b
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 170
    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/backup/IObbBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;

    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    const/4 p1, 0x0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method

.method public final tearDown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    return-void
.end method

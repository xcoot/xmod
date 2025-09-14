.class public final Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mHasQuit:Z

.field public final mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mHasQuit:Z

    .line 7
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 9
    iput p2, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    .line 11
    return-void
.end method


# virtual methods
.method public final declared-synchronized acquire()V
    .locals 4

    .line 1
    const-string v0, "Acquired wakelock:"

    .line 3
    const-string v1, "Ignore wakelock acquire after quit: "

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mHasQuit:Z

    .line 8
    if-eqz v2, :cond_0

    .line 10
    const-string v0, "BackupManagerService"

    .line 12
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 21
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 45
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 48
    const-string v1, "BackupManagerService"

    .line 50
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    invoke-static {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :goto_0
    monitor-exit p0

    .line 80
    throw v0
.end method

.method public final declared-synchronized isHeld()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized quit()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string v0, "BackupManagerService"

    .line 12
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v3, "Releasing wakelock: "

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 26
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mHasQuit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit p0

    .line 58
    throw v0
.end method

.method public final declared-synchronized release()V
    .locals 4

    .line 1
    const-string v0, "Released wakelock:"

    .line 3
    const-string v1, "Ignore wakelock release after quit: "

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mHasQuit:Z

    .line 8
    if-eqz v2, :cond_0

    .line 10
    const-string v0, "BackupManagerService"

    .line 12
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 21
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 45
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 53
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 56
    :cond_1
    const-string v1, "BackupManagerService"

    .line 58
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mUserId:I

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 67
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :goto_0
    monitor-exit p0

    .line 88
    throw v0
.end method

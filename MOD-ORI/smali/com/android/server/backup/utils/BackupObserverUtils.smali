.class public abstract Lcom/android/server/backup/utils/BackupObserverUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const-string p0, "BackupManagerService"

    .line 8
    .line 9
    const-string p1, "Backup observer went away: backupFinished"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    return-void
.end method

.method public static sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const-string p0, "BackupManagerService"

    .line 8
    .line 9
    const-string p1, "Backup observer went away: onResult"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    return-void
.end method

.method public static sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const-string p0, "BackupManagerService"

    .line 8
    .line 9
    const-string p1, "Backup observer went away: onUpdate"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    return-void
.end method

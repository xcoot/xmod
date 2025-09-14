.class public final Lcom/android/server/backup/BackupManagerYuva;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field public isMemorySaverBackupFail:Z

.field public isMemorySaverRestoreFail:Z

.field public mBackupPackageName:Ljava/lang/String;

.field public mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

.field public mRestorePackageName:Ljava/lang/String;


# direct methods
.method public static getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/backup/BackupManagerYuva;->backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/backup/BackupManagerYuva;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    .line 21
    .line 22
    sput-object v0, Lcom/android/server/backup/BackupManagerYuva;->backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 23
    .line 24
    :cond_0
    sget-object v0, Lcom/android/server/backup/BackupManagerYuva;->backupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public final sendEndBackupCallback()V
    .locals 5

    .line 1
    const-string v0, "BackupManagerYuva"

    .line 2
    .line 3
    const-string/jumbo v1, "full backup Completed "

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    .line 31
    .line 32
    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 33
    .line 34
    xor-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    invoke-interface {v1, v3, v4}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onBackupCompleted(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    const-string/jumbo v1, "full backup observer went away: EndBackup"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 49
    .line 50
    :cond_0
    :goto_0
    return-void
.end method

.method public final sendEndRestoreCallback()V
    .locals 5

    .line 1
    const-string v0, "BackupManagerYuva"

    .line 2
    .line 3
    const-string/jumbo v1, "restore completed "

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    .line 31
    .line 32
    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    .line 33
    .line 34
    xor-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    invoke-interface {v1, v3, v4}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onRestoreCompleted(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    const-string/jumbo v1, "full restore observer went away: endRestore"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 49
    .line 50
    :cond_0
    :goto_0
    return-void
.end method

.method public final sendStartBackupCallback(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "BackupManagerYuva"

    .line 2
    .line 3
    const-string v1, "backup started "

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {p1, v1}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onStartBackup(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    const-string/jumbo p1, "full backup observer went away: startBackup"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 44
    .line 45
    :cond_0
    :goto_0
    return-void
.end method

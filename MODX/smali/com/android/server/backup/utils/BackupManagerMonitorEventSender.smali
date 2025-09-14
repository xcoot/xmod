.class public final Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

.field public mMonitor:Landroid/app/backup/IBackupManagerMonitor;


# direct methods
.method public constructor <init>(Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 3
    new-instance p1, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    invoke-direct {p1}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    return-void
.end method

.method public constructor <init>(Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 6
    iput-object p2, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    return-void
.end method

.method public static putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final monitorAgentLoggingResults(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 3
    const-string v1, "BackupManagerService"

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "backup manager monitor is null unable to send event"

    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    .line 26
    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 29
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    .line 31
    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 34
    invoke-interface {p2, v0}, Landroid/app/IBackupAgent;->getLoggerResults(Lcom/android/internal/infra/AndroidFuture;)V

    .line 37
    invoke-interface {p2, v2}, Landroid/app/IBackupAgent;->getOperationType(Lcom/android/internal/infra/AndroidFuture;)V

    .line 40
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    const-wide/16 v3, 0x1f4

    .line 44
    invoke-virtual {v0, v3, v4, p2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/util/List;

    .line 50
    invoke-virtual {v2, v3, v4, p2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Ljava/lang/Integer;

    .line 56
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 59
    move-result p2

    .line 60
    new-instance v2, Landroid/os/Bundle;

    .line 62
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v3, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    .line 67
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 70
    const-string v0, "android.app.backup.extra.OPERATION_TYPE"

    .line 72
    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const/16 p2, 0x34

    .line 77
    const/4 v0, 0x2

    .line 78
    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_2

    .line 82
    :catch_0
    move-exception p0

    .line 83
    goto :goto_0

    .line 84
    :catch_1
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :goto_0
    const-string p1, "Failed to retrieve logging results from agent"

    .line 88
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    goto :goto_2

    .line 92
    :goto_1
    const-string p1, "Timeout while waiting to retrieve logging results from agent"

    .line 94
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :goto_2
    return-void
.end method

.method public final monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "BackupManagerService"

    .line 3
    const-string v1, "android.app.backup.extra.OPERATION_TYPE"

    .line 5
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    .line 7
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 10
    const-string v3, "android.app.backup.extra.LOG_EVENT_ID"

    .line 12
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    const-string p1, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    .line 17
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    if-eqz p2, :cond_0

    .line 22
    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    .line 24
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    .line 31
    iget p3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 33
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_FULL_VERSION"

    .line 38
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 41
    move-result-wide p2

    .line 42
    invoke-virtual {v2, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 45
    :cond_0
    if-eqz p4, :cond_1

    .line 47
    invoke-virtual {v2, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 59
    move-result p1

    .line 60
    const/4 p2, 0x1

    .line 61
    if-ne p1, p2, :cond_1

    .line 63
    iget-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    .line 65
    invoke-virtual {p1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->parseBackupManagerMonitorRestoreEventForDumpsys(Landroid/os/Bundle;)V

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 70
    if-eqz p1, :cond_2

    .line 72
    invoke-interface {p1, v2}, Landroid/app/backup/IBackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string p1, "backup manager monitor is null unable to send event"

    .line 78
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 82
    :catch_0
    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 85
    const-string p0, "backup manager monitor went away"

    .line 87
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    return-void
.end method

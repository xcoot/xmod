.class public Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final MORE_DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "KeyValueBackupTask"


# instance fields
.field public final mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mObserver:Landroid/app/backup/IBackupObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAgentCancelled(Landroid/content/pm/PackageInfo;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Cancel backing up "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "KeyValueBackupTask"

    .line 18
    .line 19
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/16 v1, 0xb07

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "android.app.backup.extra.LOG_CANCEL_ALL"

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x15

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 42
    .line 43
    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

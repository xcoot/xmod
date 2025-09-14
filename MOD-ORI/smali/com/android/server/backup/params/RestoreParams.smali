.class public final Lcom/android/server/backup/params/RestoreParams;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final filterSet:[Ljava/lang/String;

.field public final isSystemRestore:Z

.field public final listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public final observer:Landroid/app/backup/IRestoreObserver;

.field public final packageInfo:Landroid/content/pm/PackageInfo;

.field public final pmToken:I

.field public final token:J


# direct methods
.method public constructor <init>(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/params/RestoreParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/backup/params/RestoreParams;->token:J

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 13
    .line 14
    iput p7, p0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    .line 15
    .line 16
    iput-boolean p8, p0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    .line 17
    .line 18
    iput-object p9, p0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 21
    .line 22
    iput-object p11, p0, Lcom/android/server/backup/params/RestoreParams;->backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 23
    .line 24
    return-void
.end method

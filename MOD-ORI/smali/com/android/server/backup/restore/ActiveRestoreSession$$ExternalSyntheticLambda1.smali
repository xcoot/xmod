.class public final synthetic Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field public final synthetic f$1:Landroid/app/backup/IRestoreObserver;

.field public final synthetic f$2:Landroid/app/backup/IBackupManagerMonitor;

.field public final synthetic f$3:J

.field public final synthetic f$4:[Ljava/lang/String;

.field public final synthetic f$5:Landroid/app/backup/RestoreSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Landroid/app/backup/RestoreSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;->f$1:Landroid/app/backup/IRestoreObserver;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;->f$2:Landroid/app/backup/IBackupManagerMonitor;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;->f$3:J

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;->f$4:[Ljava/lang/String;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;->f$5:Landroid/app/backup/RestoreSet;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 2
    .line 3
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;->f$1:Landroid/app/backup/IRestoreObserver;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;->f$2:Landroid/app/backup/IBackupManagerMonitor;

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;->f$3:J

    .line 8
    .line 9
    iget-object v10, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;->f$4:[Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda1;->f$5:Landroid/app/backup/RestoreSet;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    check-cast v2, Lcom/android/server/backup/transport/TransportConnection;

    .line 15
    .line 16
    move-object v11, p2

    .line 17
    check-cast v11, Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    array-length p1, v10

    .line 23
    const/4 p2, 0x1

    .line 24
    if-le p1, p2, :cond_0

    .line 25
    .line 26
    move v9, p2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    move v9, p1

    .line 30
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->getBackupEligibilityRules(Landroid/app/backup/RestoreSet;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 31
    .line 32
    .line 33
    move-result-object v12

    .line 34
    new-instance p0, Lcom/android/server/backup/params/RestoreParams;

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v1, p0

    .line 39
    invoke-direct/range {v1 .. v12}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 40
    .line 41
    .line 42
    return-object p0
.end method

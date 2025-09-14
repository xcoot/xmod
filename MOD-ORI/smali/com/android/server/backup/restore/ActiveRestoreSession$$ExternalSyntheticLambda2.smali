.class public final synthetic Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field public final synthetic f$1:Landroid/app/backup/IRestoreObserver;

.field public final synthetic f$2:Landroid/app/backup/IBackupManagerMonitor;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/app/backup/RestoreSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$1:Landroid/app/backup/IRestoreObserver;

    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$2:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$3:J

    iput-object p6, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$1:Landroid/app/backup/IRestoreObserver;

    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$2:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$3:J

    iput-object p6, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$1:Landroid/app/backup/IRestoreObserver;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$2:Landroid/app/backup/IBackupManagerMonitor;

    .line 11
    .line 12
    iget-wide v5, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$3:J

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v7, p0

    .line 17
    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    move-object v2, p1

    .line 20
    check-cast v2, Lcom/android/server/backup/transport/TransportConnection;

    .line 21
    .line 22
    move-object v11, p2

    .line 23
    check-cast v11, Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 26
    .line 27
    new-instance p0, Lcom/android/server/backup/params/RestoreParams;

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    move-object v1, p0

    .line 33
    invoke-direct/range {v1 .. v12}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$1:Landroid/app/backup/IRestoreObserver;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$2:Landroid/app/backup/IBackupManagerMonitor;

    .line 42
    .line 43
    iget-wide v5, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$3:J

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Landroid/app/backup/RestoreSet;

    .line 48
    .line 49
    move-object v2, p1

    .line 50
    check-cast v2, Lcom/android/server/backup/transport/TransportConnection;

    .line 51
    .line 52
    move-object v11, p2

    .line 53
    check-cast v11, Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->getBackupEligibilityRules(Landroid/app/backup/RestoreSet;)Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    new-instance p0, Lcom/android/server/backup/params/RestoreParams;

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x1

    .line 64
    const/4 v10, 0x0

    .line 65
    move-object v1, p0

    .line 66
    invoke-direct/range {v1 .. v12}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 67
    .line 68
    .line 69
    return-object p0

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

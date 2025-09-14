.class public final synthetic Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/backup/remote/RemoteCallable;


# instance fields
.field public final synthetic f$0:Landroid/app/IBackupAgent;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroid/app/IBackupAgent;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;->f$0:Landroid/app/IBackupAgent;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call(Lcom/android/server/backup/remote/FutureBackupCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;->f$0:Landroid/app/IBackupAgent;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;->f$2:J

    .line 6
    .line 7
    move-object v5, p1

    .line 8
    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

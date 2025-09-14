.class public final synthetic Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/backup/internal/OnTaskFinishedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/backup/TransportManager;

.field public final synthetic f$1:Lcom/android/server/backup/transport/TransportConnection;

.field public final synthetic f$2:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/TransportManager;

    .line 5
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection;

    .line 7
    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/TransportManager;

    .line 8
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection;

    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 15
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/TransportManager;

    .line 21
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection;

    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 26
    iget-object p0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 28
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 31
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

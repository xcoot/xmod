.class public final synthetic Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/backup/internal/OnTaskFinishedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/backup/UserBackupManagerService;

.field public final synthetic f$1:Lcom/android/server/backup/transport/TransportConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection;

    .line 11
    .line 12
    invoke-virtual {v0, p0, p1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection;

    .line 21
    .line 22
    invoke-virtual {v0, p0, p1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/backup/transport/TransportConnection;

    .line 31
    .line 32
    invoke-virtual {v1, p0, p1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

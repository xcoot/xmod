.class public final Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 6
    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 3

    .line 1
    sget v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->LOG_NETWORK_EVENT_MSG:I

    .line 3
    const-string v0, "NetworkLoggingHandler"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "Received a batch finalization timeout alarm, finalizing "

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 14
    iget-object v2, v2, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mNetworkEvents:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, " pending events."

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 40
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->finalizeBatchAndBuildAdminMessageLocked()Landroid/os/Bundle;

    .line 43
    move-result-object v1

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz v1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwnerOrProfileOwner(Landroid/os/Bundle;)V

    .line 52
    :cond_0
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p0
.end method

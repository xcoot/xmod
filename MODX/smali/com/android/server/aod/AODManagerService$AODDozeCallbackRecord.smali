.class public final Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mHandler:Lcom/android/server/aod/AODManagerService$2;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 6
    new-instance v0, Lcom/android/server/aod/AODManagerService$2;

    .line 8
    iget-object p1, p1, Lcom/android/server/aod/AODManagerService;->mLooper:Landroid/os/Looper;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/aod/AODManagerService$2;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 14
    iput-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Lcom/android/server/aod/AODManagerService$2;

    .line 16
    iput-object p2, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    .line 18
    iput p3, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->pid:I

    .line 20
    iput p4, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->uid:I

    .line 22
    if-eqz p2, :cond_0

    .line 24
    const/4 p1, 0x0

    .line 25
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    sget p0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 31
    const-string p0, "AODManagerService"

    .line 33
    const-string p1, "AODListenerRecord : linkToDeath error"

    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    sget v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 3
    const-string v0, "AODManagerService"

    .line 5
    const-string v1, "binderDied"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->mHandler:Lcom/android/server/aod/AODManagerService$2;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 18
    iget-object v0, v0, Lcom/android/server/aod/AODManagerService;->mAODDozeLocks:Ljava/util/ArrayList;

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 23
    iput-object v1, v2, Lcom/android/server/aod/AODManagerService;->mAODCallback:Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->token:Landroid/os/IBinder;

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "[callback: pid:("

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->pid:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ") uid:("

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeCallbackRecord;->uid:I

    .line 20
    const-string v1, ")]"

    .line 22
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

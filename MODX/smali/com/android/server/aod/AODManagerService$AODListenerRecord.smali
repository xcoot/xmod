.class public final Lcom/android/server/aod/AODManagerService$AODListenerRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    .line 8
    iput p3, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->pid:I

    .line 10
    iput p4, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->uid:I

    .line 12
    if-eqz p2, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    sget p0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 21
    const-string p0, "AODManagerService"

    .line 23
    const-string p1, "AODListenerRecord : linkToDeath error"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    sget v0, Lcom/android/server/aod/AODManagerService;->DEBUG_TURNING_ON_DELAYED:I

    .line 3
    const-string v0, "AODManagerService"

    .line 5
    const-string v1, "binderDied"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 12
    iget-object v0, v0, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 17
    iget-object v1, v1, Lcom/android/server/aod/AODManagerService;->mListeners:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->token:Landroid/os/IBinder;

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "  [Listener: pid:("

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->pid:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ") uid:("

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget p0, p0, Lcom/android/server/aod/AODManagerService$AODListenerRecord;->uid:I

    .line 20
    const-string v1, ")]"

    .line 22
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

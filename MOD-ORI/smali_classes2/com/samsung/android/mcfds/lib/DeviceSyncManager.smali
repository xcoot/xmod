.class public final Lcom/samsung/android/mcfds/lib/DeviceSyncManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCoreInterface:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

.field public mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;

.field public mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

.field public final mServiceConnection:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

.field public mServiceState:I

.field public final mServiceStateListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;-><init>(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;-><init>(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceStateListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;

    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;-><init>(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceConnection:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    return-void
.end method

.method public static access$200(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    .line 7
    .line 8
    if-eq p1, v0, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 12
    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p1, "bindMcf : SERVICE_STATE_AVAILABLE"

    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/16 p1, 0x8

    .line 28
    .line 29
    invoke-static {p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget-object p1, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string p1, "bindMcf : SERVICE_STATE_UNAVAILABLE"

    .line 42
    .line 43
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v0, "bindMcf : SERVICE_STATE_CONNECTED (bindReason: "

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->mBindReason:I

    .line 55
    .line 56
    const-string v3, ")"

    .line 57
    .line 58
    invoke-static {p1, v0, v3, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->mBindReason:I

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->initMcfDeviceSyncMainController(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-string p1, "bindMcf : SERVICE_STATE_DISCONNECTED"

    .line 68
    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->mBindReason:I

    .line 74
    .line 75
    :cond_5
    return-void
.end method

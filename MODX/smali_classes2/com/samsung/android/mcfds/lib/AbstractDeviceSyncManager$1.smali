.class public final Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final sendMessage(Landroid/os/Message;)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "sendMessage : Service is invalid"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    :try_start_0
    check-cast p0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;->internalCommand(Landroid/os/Message;)I

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v3, "sendMessage : [ "

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget p1, p1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " ] "

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return v0
.end method

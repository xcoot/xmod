.class public final Lcom/android/server/location/contexthub/ContextHubService$1;
.super Landroid/hardware/location/IContextHubClientCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;

.field public final synthetic val$contextHubId:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 3
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    .line 5
    invoke-direct {p0}, Landroid/hardware/location/IContextHubClientCallback$Stub;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final finishCallback()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubService;->mDefaultClientMap:Ljava/util/Map;

    .line 5
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/hardware/location/IContextHubClient;

    .line 17
    invoke-interface {v0}, Landroid/hardware/location/IContextHubClient;->callbackFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "RemoteException while finishing callback for hub (ID = "

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string p0, ")"

    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    const-string v1, "ContextHubService"

    .line 45
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_0
    return-void
.end method

.method public final onClientAuthorizationChanged(JI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    .line 4
    return-void
.end method

.method public final onHubReset()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-byte v1, v0, v1

    .line 7
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 9
    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    .line 11
    const/4 v3, 0x7

    .line 12
    const/4 v4, -0x1

    .line 13
    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 16
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    .line 19
    return-void
.end method

.method public final onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubService;->mNanoAppStateManager:Lcom/android/server/location/contexthub/NanoAppStateManager;

    .line 5
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    .line 7
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/NanoAppStateManager;->getNanoAppHandle(IJ)I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    .line 17
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    .line 20
    move-result v2

    .line 21
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubService$1;->val$contextHubId:I

    .line 23
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->onMessageReceiptOldApi(III[B)I

    .line 30
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    .line 33
    return-void
.end method

.method public final onNanoAppAborted(JI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    .line 4
    return-void
.end method

.method public final onNanoAppDisabled(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    .line 4
    return-void
.end method

.method public final onNanoAppEnabled(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    .line 4
    return-void
.end method

.method public final onNanoAppLoaded(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    .line 4
    return-void
.end method

.method public final onNanoAppUnloaded(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService$1;->finishCallback()V

    .line 4
    return-void
.end method

.class public final Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$hostEndpointId:S

.field public final synthetic val$message:Landroid/hardware/location/NanoAppMessage;

.field public final synthetic val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;ILandroid/hardware/location/NanoAppMessage;SILandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 2
    .line 3
    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$message:Landroid/hardware/location/NanoAppMessage;

    .line 4
    .line 5
    iput-short p6, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$hostEndpointId:S

    .line 6
    .line 7
    iput p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$contextHubId:I

    .line 8
    .line 9
    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    .line 10
    .line 11
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(ILjava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onTransact()I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$message:Landroid/hardware/location/NanoAppMessage;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroid/hardware/location/NanoAppMessage;->setIsReliable(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$message:Landroid/hardware/location/NanoAppMessage;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Landroid/hardware/location/NanoAppMessage;->setMessageSequenceNumber(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 21
    .line 22
    iget-short v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$hostEndpointId:S

    .line 23
    .line 24
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$contextHubId:I

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$message:Landroid/hardware/location/NanoAppMessage;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3, p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return p0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string v1, "ContextHubTransactionManager"

    .line 35
    .line 36
    const-string v2, "RemoteException while trying to send a reliable message"

    .line 37
    .line 38
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    return v0
.end method

.method public final onTransactionComplete(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$5;->val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "ContextHubTransactionManager"

    .line 9
    .line 10
    const-string v0, "RemoteException while calling client onTransactionComplete"

    .line 11
    .line 12
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

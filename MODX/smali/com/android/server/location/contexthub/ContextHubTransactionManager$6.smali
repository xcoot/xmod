.class public final Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final synthetic val$contextHubId:I

.field public final synthetic val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;ILjava/lang/String;ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 3
    iput p4, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$contextHubId:I

    .line 5
    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    .line 7
    const/4 p1, 0x4

    .line 8
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IILjava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public final onQueryResponse(ILjava/util/List;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$onCompleteCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    .line 3
    invoke-interface {p0, p1, p2}, Landroid/hardware/location/IContextHubTransactionCallback;->onQueryResponse(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "ContextHubTransactionManager"

    .line 10
    const-string p2, "RemoteException while calling client onQueryComplete"

    .line 12
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :goto_0
    return-void
.end method

.method public final onTransact()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->this$0:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 5
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$contextHubId:I

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->queryNanoapps(I)I

    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string v0, "ContextHubTransactionManager"

    .line 15
    const-string v1, "RemoteException while trying to query for nanoapps"

    .line 17
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public final onTransactionComplete(I)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->onQueryResponse(ILjava/util/List;)V

    .line 8
    return-void
.end method

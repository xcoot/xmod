.class public final Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final canHandleReceivedAssistDataLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final onAssistDataReceivedLocked(IILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 3
    iget-object p1, p1, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 8
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

    .line 10
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    :try_start_1
    new-instance p1, Landroid/app/contextualsearch/ContextualSearchState;

    .line 15
    const-string/jumbo p2, "structure"

    .line 18
    const-class v0, Landroid/app/assist/AssistStructure;

    .line 20
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/app/assist/AssistStructure;

    .line 26
    const-string/jumbo v0, "content"

    .line 29
    const-class v1, Landroid/app/assist/AssistContent;

    .line 31
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/assist/AssistContent;

    .line 37
    invoke-direct {p1, p2, v0, p3}, Landroid/app/contextualsearch/ContextualSearchState;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/os/Bundle;)V

    .line 40
    invoke-interface {p0, p1}, Landroid/app/contextualsearch/IContextualSearchCallback;->onResult(Landroid/app/contextualsearch/ContextualSearchState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string p1, "ContextualSearchManagerService"

    .line 47
    const-string p2, "Error invoking ContextualSearchCallback"

    .line 49
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string p0, "ContextualSearchManagerService"

    .line 55
    const-string p1, "Callback went away!"

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    throw p0
.end method

.method public final onAssistRequestCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$1;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mStateCallback:Landroid/app/contextualsearch/IContextualSearchCallback;

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

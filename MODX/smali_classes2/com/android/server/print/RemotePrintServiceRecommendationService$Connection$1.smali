.class public final Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;
.super Landroid/printservice/recommendation/IRecommendationServiceCallbacks$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/printservice/recommendation/IRecommendationServiceCallbacks$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRecommendationsUpdated(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    .line 11
    .line 12
    iget-boolean v2, v1, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string/jumbo v1, "recommendation"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->mCallbacks:Lcom/android/server/print/UserState;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v2, v3}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

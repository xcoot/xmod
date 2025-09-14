.class Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

.field public final mNetworkType:I

.field public mScanResultsFilter:Ljava/util/function/UnaryOperator;

.field public final mScoredNetworkList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScoredNetworkList:Ljava/util/List;

    .line 8
    iput p3, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mNetworkType:I

    .line 10
    iput-object p4, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    .line 12
    iput-object p5, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/net/INetworkScoreCache;

    .line 3
    instance-of v0, p2, Ljava/lang/Integer;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p2, 0x0

    .line 15
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScoredNetworkList:Ljava/util/List;

    .line 17
    invoke-virtual {p0, p2, v0}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->filterScores(ILjava/util/List;)Ljava/util/List;

    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 27
    invoke-interface {p1, p2}, Landroid/net/INetworkScoreCache;->updateScores(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    sget-boolean p2, Lcom/android/server/NetworkScoreService;->VERBOSE:Z

    .line 34
    if-eqz p2, :cond_1

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    const-string v0, "Unable to update scores of type "

    .line 40
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget p0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mNetworkType:I

    .line 45
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    const-string p2, "NetworkScoreService"

    .line 54
    invoke-static {p2, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_1
    :goto_1
    return-void
.end method

.method public final filterScores(ILjava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    const-string p0, "Unknown filter type: "

    .line 11
    const-string v0, "NetworkScoreService"

    .line 13
    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    return-object p2

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    .line 19
    if-nez p1, :cond_1

    .line 21
    new-instance p1, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;

    .line 23
    new-instance v0, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;

    .line 25
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mContext:Landroid/content/Context;

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-direct {v0, v1, v2}, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;-><init>(Landroid/content/Context;I)V

    .line 31
    invoke-direct {p1, v0}, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;-><init>(Lcom/android/server/NetworkScoreService$WifiInfoSupplier;)V

    .line 34
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    .line 38
    invoke-interface {p0, p2}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljava/util/List;

    .line 44
    return-object p0

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    .line 47
    if-nez p1, :cond_3

    .line 49
    new-instance p1, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;

    .line 51
    new-instance v0, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;

    .line 53
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mContext:Landroid/content/Context;

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;-><init>(Landroid/content/Context;I)V

    .line 59
    invoke-direct {p1, v0}, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;-><init>(Lcom/android/server/NetworkScoreService$WifiInfoSupplier;)V

    .line 62
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    .line 64
    :cond_3
    iget-object p0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    .line 66
    invoke-interface {p0, p2}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Ljava/util/List;

    .line 72
    return-object p0

    .line 73
    :cond_4
    return-object p2
.end method

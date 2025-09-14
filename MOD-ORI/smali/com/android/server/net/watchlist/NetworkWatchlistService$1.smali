.class public final Lcom/android/server/net/watchlist/NetworkWatchlistService$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConnectEvent(Ljava/lang/String;IJI)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 2
    .line 3
    iget-boolean p2, p2, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    filled-new-array {p1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p2, p5, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->asyncNetworkEvent(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 11
    .line 12
    invoke-virtual {p0, p4, p9, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->asyncNetworkEvent(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

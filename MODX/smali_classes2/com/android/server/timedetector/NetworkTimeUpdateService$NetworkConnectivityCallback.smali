.class public final Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    const-string v0, "NetworkTimeUpdateService"

    .line 2
    .line 3
    const-string v1, "New default network %s; checking time."

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    const-string/jumbo p1, "network available"

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$monPollNetworkTime(Lcom/android/server/timedetector/NetworkTimeUpdateService;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

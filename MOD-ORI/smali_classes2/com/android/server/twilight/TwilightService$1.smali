.class public final Lcom/android/server/twilight/TwilightService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/twilight/TwilightManager;


# instance fields
.field public final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method public constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getLastTwilightState()Lcom/android/server/twilight/TwilightState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final unregisterListener(Lcom/android/server/twilight/TwilightListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService$1;->this$0:Lcom/android/server/twilight/TwilightService;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.class public Lcom/android/server/attention/AttentionManagerService$AttentionHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->cancel()V

    .line 18
    .line 19
    .line 20
    monitor-exit p1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_1
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$mcancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService;)V

    .line 33
    .line 34
    .line 35
    monitor-exit p1

    .line 36
    :goto_0
    return-void

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    throw p0
.end method

.class public final Lcom/android/server/wm/DisplayHashController$Handler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayHashController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayHashController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$Handler;->this$0:Lcom/android/server/wm/DisplayHashController;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit p1

    .line 31
    goto :goto_2

    .line 32
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_2
    return-void
.end method

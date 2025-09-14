.class public final Lcom/android/server/sepunion/cover/CoverServiceManager$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$H;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$H;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    .line 17
    .line 18
    iget v1, p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;

    .line 21
    .line 22
    sget-object v2, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverServiceLocked(Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$H;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 29
    .line 30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lcom/samsung/android/cover/CoverState;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mWakeLockRunnable:Lcom/android/server/sepunion/cover/CoverServiceManager$3;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    new-instance p1, Lcom/android/server/sepunion/cover/CoverServiceManager$3;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$3;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mWakeLockRunnable:Lcom/android/server/sepunion/cover/CoverServiceManager$3;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    .line 79
    .line 80
    const-wide/16 v0, 0x3e8

    .line 81
    .line 82
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void

    .line 86
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

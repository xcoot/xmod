.class public abstract Lcom/samsung/android/server/audio/AudioExecutor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sExecutor:Landroid/os/HandlerExecutor;


# direct methods
.method public static execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    const-class v0, Lcom/samsung/android/server/audio/AudioExecutor;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/os/HandlerThread;

    .line 9
    .line 10
    const-string v2, "AS.AudioExecutor"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Landroid/os/HandlerExecutor;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;

    .line 38
    .line 39
    new-instance v2, Lcom/samsung/android/server/audio/AudioExecutor$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-direct {v2, v0, p0}, Lcom/samsung/android/server/audio/AudioExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v0

    .line 49
    throw p0
.end method

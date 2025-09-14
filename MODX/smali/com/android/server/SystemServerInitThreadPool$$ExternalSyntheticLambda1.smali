.class public final synthetic Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServerInitThreadPool;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServerInitThreadPool;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/SystemServerInitThreadPool;

    .line 6
    iput-object p2, p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/SystemServerInitThreadPool;

    .line 3
    iget-object v1, p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 5
    iget-object p0, p0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    const-string v4, "InitThreadPoolExec:"

    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 31
    sget-boolean v3, Lcom/android/server/SystemServerInitThreadPool;->IS_DEBUGGABLE:Z

    .line 33
    if-eqz v3, :cond_0

    .line 35
    const-string v4, "SystemServerInitThreadPool"

    .line 37
    const-string v5, "Started executing "

    .line 39
    invoke-static {v5, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    iget-object p0, v0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 47
    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, v0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 50
    check-cast v0, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 55
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    if-eqz v3, :cond_1

    .line 58
    const-string p0, "SystemServerInitThreadPool"

    .line 60
    const-string v0, "Finished executing "

    .line 62
    invoke-static {v0, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw v0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    const-string v0, "SystemServerInitThreadPool"

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    const-string v4, "Failure in "

    .line 79
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ": "

    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 103
    throw p0
.end method

.class public final synthetic Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/CachedAppOptimizer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->KEY_USE_COMPACTION:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "ActivityManager"

    .line 11
    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    const-string p0, "Freezer enabled"

    .line 15
    .line 16
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-virtual {v0, p0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 21
    .line 22
    .line 23
    iget-object p0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    const/4 v0, 0x2

    .line 50
    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string p0, "Freezer disabled"

    .line 55
    .line 56
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    invoke-virtual {v0, p0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

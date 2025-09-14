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

    .line 4
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$1:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 3
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;->f$1:Z

    .line 5
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->KEY_USE_COMPACTION:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v1, "ActivityManager"

    .line 12
    if-eqz p0, :cond_2

    .line 14
    const-string p0, "Freezer enabled"

    .line 16
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-virtual {v0, p0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 23
    iget-object p0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 25
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 34
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 36
    if-nez v1, :cond_1

    .line 38
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 40
    invoke-direct {v1, v0}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 43
    iput-object v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 48
    move-result p0

    .line 49
    const/4 v0, 0x2

    .line 50
    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string p0, "Freezer disabled"

    .line 56
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 p0, 0x0

    .line 60
    invoke-virtual {v0, p0}, Lcom/android/server/am/CachedAppOptimizer;->enableFreezer(Z)Z

    .line 63
    :goto_0
    return-void
.end method

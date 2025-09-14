.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Ljava/util/concurrent/atomic/AtomicBoolean;JLcom/android/server/am/UserController$$ExternalSyntheticLambda26;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/am/UserController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;->f$2:J

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;->f$3:Ljava/lang/Runnable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/am/UserController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;->f$2:J

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda28;->f$3:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    const-string v4, ", "

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-static {v4, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const-string v1, "ActivityManager"

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v5, "Timeout on dispatchOnBeforeUserSwitching. These UserSwitchObservers did not respond in "

    .line 36
    .line 37
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v2, "ms: "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, "."

    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p0

    .line 71
    :cond_0
    :goto_0
    return-void
.end method

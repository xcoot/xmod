.class public final Lcom/android/server/am/FreecessController$3;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessController;

.field public final synthetic val$startTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessController;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/android/server/am/FreecessController$3;->val$startTime:J

    .line 4
    .line 5
    const-string p1, "MARsWatchdogUnfreezer"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "FreecessController"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    iget-wide v5, p0, Lcom/android/server/am/FreecessController$3;->val$startTime:J

    .line 43
    .line 44
    sub-long/2addr v3, v5

    .line 45
    const-wide/16 v5, 0x1388

    .line 46
    .line 47
    cmp-long v3, v3, v5

    .line 48
    .line 49
    if-ltz v3, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    if-eqz v2, :cond_0

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/am/FreecessController$3;->this$0:Lcom/android/server/am/FreecessController;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v3, v2}, Lcom/android/server/am/FreecessController;->releaseFreezedAppPid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    sget-boolean v1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 66
    .line 67
    const-string v1, "Error occurred while handleResetAllPreAction: "

    .line 68
    .line 69
    invoke-static {p0, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 73
    .line 74
    const-string p0, "!@*** unFreezeAllPackages for watchdog : End thread for preaction unfreezing!!!"

    .line 75
    .line 76
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    return-void
.end method

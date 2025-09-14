.class public final Lcom/android/server/wm/AnrController$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$monitor:Ljava/lang/Runnable;

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$now:J

.field public final synthetic val$shouldDumpSf:[Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/AnrController$1;->val$monitor:Ljava/lang/Runnable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/AnrController$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/android/server/wm/AnrController$1;->val$now:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/android/server/wm/AnrController$1;->val$name:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/android/server/wm/AnrController$1;->val$shouldDumpSf:[Z

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AnrController$1;->val$monitor:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/AnrController$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/android/server/wm/AnrController$1;->val$now:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    sget-wide v2, Lcom/android/server/wm/AnrController;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    .line 19
    .line 20
    cmp-long v2, v0, v2

    .line 21
    .line 22
    const-string v3, "WindowManager"

    .line 23
    .line 24
    if-lez v2, :cond_0

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "Pre-dump acquired "

    .line 29
    .line 30
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/AnrController$1;->val$name:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, " in "

    .line 39
    .line 40
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string/jumbo p0, "ms"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, p0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AnrController$1;->val$name:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/AnrController$1;->val$shouldDumpSf:[Z

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    aput-boolean v0, p0, v0

    .line 65
    .line 66
    :cond_1
    :goto_0
    return-void
.end method

.class public final Lcom/android/server/am/LowMemDetector$LowMemThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mIsTracingMemCriticalLow:Z

.field public final synthetic this$0:Lcom/android/server/am/LowMemDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/LowMemDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    .line 2
    .line 3
    const-string p1, "LowMemThread"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$mwaitForPressure(Lcom/android/server/am/LowMemDetector;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_1
    const-wide/16 v3, 0x40

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-boolean v5, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->mIsTracingMemCriticalLow:Z

    .line 19
    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    const-string/jumbo v5, "criticalLowMemory"

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    if-nez v1, :cond_2

    .line 30
    .line 31
    iget-boolean v5, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->mIsTracingMemCriticalLow:Z

    .line 32
    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->mIsTracingMemCriticalLow:Z

    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    if-ne v0, v1, :cond_3

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    .line 44
    .line 45
    iput-boolean v2, p0, Lcom/android/server/am/LowMemDetector;->mAvailable:Z

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/server/am/LowMemDetector;->mPressureStateLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    .line 54
    .line 55
    iput v0, v2, Lcom/android/server/am/LowMemDetector;->mPressureState:I

    .line 56
    .line 57
    monitor-exit v1

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

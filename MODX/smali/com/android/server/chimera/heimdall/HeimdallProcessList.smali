.class public final Lcom/android/server/chimera/heimdall/HeimdallProcessList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mInProgressProcesses:Ljava/util/HashSet;

.field public mProtectedProcesses:Ljava/util/HashSet;

.field public mReportedProcesses:Ljava/util/Queue;

.field public mTimeoutReportProtectedHour:I


# virtual methods
.method public final pushProcessToReported(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;-><init>(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->reportTime:J

    .line 12
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    .line 14
    check-cast p1, Ljava/util/LinkedList;

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "Report-protecting (%dh) starts. "

    .line 23
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->toDumpString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p0

    .line 43
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 54
    return-void
.end method

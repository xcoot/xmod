.class final Lcom/android/server/power/ScreenTimeoutOverridePolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastAutoReleaseReason:I

.field public mPolicyCallback:Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda13;

.field public mScreenTimeoutOverrideConfig:J


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    const-string v1, "  "

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 9
    .line 10
    .line 11
    const-string p1, "ScreenTimeoutOverridePolicy:"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v1, "mScreenTimeoutOverrideConfig="

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-wide v1, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mScreenTimeoutOverrideConfig:J

    .line 28
    .line 29
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "mLastAutoReleaseReason="

    .line 42
    .line 43
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget p0, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mLastAutoReleaseReason:I

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final releaseAllWakeLocks(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mPolicyCallback:Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda13;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 24
    .line 25
    .line 26
    iput p1, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mLastAutoReleaseReason:I

    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "Releasing all screen timeout override wake lock. (reason="

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget p0, p0, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->mLastAutoReleaseReason:I

    .line 36
    .line 37
    const-string v0, ")"

    .line 38
    .line 39
    const-string v1, "ScreenTimeoutOverridePolicy"

    .line 40
    .line 41
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

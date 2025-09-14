.class public final Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sTraceSeqId:I


# instance fields
.field public mAssociatedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

.field public final mStartRealtimeNs:J

.field public final mStartUptimeNs:J

.field public mTraceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartRealtimeNs:J

    .line 15
    .line 16
    const-wide/16 v0, 0x40

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget v2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->sTraceSeqId:I

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    sput v2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->sTraceSeqId:I

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "launchingActivity#"

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget v3, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->sTraceSeqId:I

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public allDrawn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final stopTrace(ZLcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 9
    .line 10
    if-eq p2, v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const-wide/16 v1, 0x40

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    const-string p1, ":failed"

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    if-eqz p1, :cond_3

    .line 27
    .line 28
    const-string p1, ":canceled:"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-boolean p1, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    .line 32
    .line 33
    if-nez p1, :cond_4

    .line 34
    .line 35
    const-string p1, ":completed-same-process:"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    iget p1, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 39
    .line 40
    const/16 p2, 0x9

    .line 41
    .line 42
    if-ne p1, p2, :cond_5

    .line 43
    .line 44
    const-string p1, ":completed-hot:"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    const/16 p2, 0x8

    .line 48
    .line 49
    if-ne p1, p2, :cond_6

    .line 50
    .line 51
    const-string p1, ":completed-warm:"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    const-string p1, ":completed-cold:"

    .line 55
    .line 56
    :goto_0
    invoke-static {p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 61
    .line 62
    iget-object p2, p2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 63
    .line 64
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v1, v2, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mTraceName:Ljava/lang/String;

    .line 95
    .line 96
    return-void
.end method

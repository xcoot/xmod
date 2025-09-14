.class public final Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBindApplicationDelayMs:I

.field public mCurrentTransitionDelayMs:I

.field public mIsDrawn:Z

.field public final mIsInTaskActivityStart:Z

.field public mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mLaunchTraceName:Ljava/lang/String;

.field public final mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

.field public mLoggedStartingWindowDrawn:Z

.field public mLoggedTransitionStarting:Z

.field public mMultiWindowLaunchType:I

.field public mPendingFullyDrawn:Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda3;

.field public final mProcessOomAdj:I

.field public mProcessRunning:Z

.field public final mProcessState:I

.field public final mProcessSwitch:Z

.field public mReason:I

.field public mRelaunched:Z

.field public final mSourceEventDelayMs:I

.field public final mSourceType:I

.field public mStartingWindowDelayMs:I

.field public mTransitionType:I

.field public mWindowsDrawnDelayMs:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Landroid/app/ActivityOptions;IZZIIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mMultiWindowLaunchType:I

    .line 16
    .line 17
    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 18
    .line 19
    iput p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 20
    .line 21
    iput-boolean p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    .line 22
    .line 23
    iput-boolean p6, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    .line 24
    .line 25
    iput p7, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessState:I

    .line 26
    .line 27
    iput p8, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessOomAdj:I

    .line 28
    .line 29
    iput-boolean p9, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsInTaskActivityStart:Z

    .line 30
    .line 31
    iget-object p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    if-ne p4, p1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    if-eqz p4, :cond_1

    .line 37
    .line 38
    iget-object p5, p4, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 39
    .line 40
    iput-object p5, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 41
    .line 42
    const/4 p5, 0x0

    .line 43
    iput-object p5, p4, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 44
    .line 45
    iget-object p6, p4, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 46
    .line 47
    iput-object p6, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 48
    .line 49
    iput-object p5, p4, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 50
    .line 51
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 52
    .line 53
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    .line 54
    .line 55
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    .line 56
    .line 57
    :goto_0
    iget-object p1, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 58
    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    iput-object p0, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 62
    .line 63
    iget-object p1, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iget-object p4, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 74
    .line 75
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    if-ne p1, p4, :cond_2

    .line 80
    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string p4, "TransitionInfo: copy mLastLaunchedActivity from mAssociatedActivity="

    .line 84
    .line 85
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p4, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 89
    .line 90
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string p4, "ActivityTaskManager"

    .line 98
    .line 99
    invoke-static {p4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iget-object p1, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 103
    .line 104
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 105
    .line 106
    :cond_2
    if-eqz p3, :cond_3

    .line 107
    .line 108
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getSourceInfo()Landroid/app/ActivityOptions$SourceInfo;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    iget p3, p1, Landroid/app/ActivityOptions$SourceInfo;->type:I

    .line 115
    .line 116
    iput p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceType:I

    .line 117
    .line 118
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 119
    .line 120
    iget-wide p4, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 121
    .line 122
    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 123
    .line 124
    .line 125
    move-result-wide p2

    .line 126
    iget-wide p4, p1, Landroid/app/ActivityOptions$SourceInfo;->eventTimeMs:J

    .line 127
    .line 128
    sub-long/2addr p2, p4

    .line 129
    long-to-int p1, p2

    .line 130
    iput p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    .line 131
    .line 132
    :cond_3
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TransitionInfo{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " a="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " d="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsDrawn:Z

    .line 35
    .line 36
    const-string/jumbo v1, "}"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

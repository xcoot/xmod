.class public final Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final activityRecordIdHashCode:I

.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final bindApplicationDelayMs:I

.field public final launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

.field public final launchedActivityLaunchToken:Ljava/lang/String;

.field public final launchedActivityLaunchedFromPackage:Ljava/lang/String;

.field public final launchedActivityName:Ljava/lang/String;

.field public final launchedActivityShortComponentName:Ljava/lang/String;

.field public final multiWindowLaunchType:I

.field public final packageName:Ljava/lang/String;

.field public final processName:Ljava/lang/String;

.field public final processRecord:Lcom/android/server/wm/WindowProcessController;

.field public final reason:I

.field public final relaunched:Z

.field final sourceEventDelayMs:I

.field final sourceType:I

.field public final startingWindowDelayMs:I

.field public final timestampNs:J

.field public final type:I

.field public final userId:I

.field public final windowsDrawnDelayMs:I

.field public final windowsFullyDrawnDelayMs:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 5
    .line 6
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    .line 33
    .line 34
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    .line 35
    .line 36
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    .line 37
    .line 38
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    .line 39
    .line 40
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    .line 41
    .line 42
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceEventDelayMs:I

    .line 43
    .line 44
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    .line 45
    .line 46
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    .line 47
    .line 48
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    .line 49
    .line 50
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 51
    .line 52
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    .line 53
    .line 54
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 55
    .line 56
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 57
    .line 58
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 59
    .line 60
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 63
    .line 64
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    .line 67
    .line 68
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceType:I

    .line 69
    .line 70
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceType:I

    .line 71
    .line 72
    iget v0, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 73
    .line 74
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 75
    .line 76
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    iput p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->activityRecordIdHashCode:I

    .line 85
    .line 86
    iput p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    .line 87
    .line 88
    iget-boolean p2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    .line 89
    .line 90
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    .line 91
    .line 92
    iget-object p2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 93
    .line 94
    iget-wide p2, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartRealtimeNs:J

    .line 95
    .line 96
    iput-wide p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->timestampNs:J

    .line 97
    .line 98
    iget p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mMultiWindowLaunchType:I

    .line 99
    .line 100
    iput p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->multiWindowLaunchType:I

    .line 101
    .line 102
    return-void
.end method

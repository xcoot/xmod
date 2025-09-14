.class public final Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;
.super Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mCancelRotationResolverRequest:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;

.field public mCurrentCallbackId:I

.field public mDesiredRotation:I

.field public mLastRotationResolution:I

.field public mLastRotationResolutionTimeStamp:J

.field public mProposedRotation:I

.field public mRotationEvaluationScheduled:Z

.field public final mRotationEvaluator:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

.field public mRotationMemorizationTimeoutMillis:J

.field public mRotationResolverTimeoutMillis:J

.field public mTouchEndedTimestampNanos:J

.field public mTouching:Z

.field public mUnfoldEventDetected:Z

.field public final synthetic this$0:Lcom/android/server/wm/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/SensorEventCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, -0x8000000000000000L

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 12
    .line 13
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 14
    .line 15
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    .line 19
    .line 20
    new-instance p1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

    .line 26
    .line 27
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v1, "window_manager"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo p1, "rotation_resolver_timeout_millis"

    .line 47
    .line 48
    .line 49
    const-wide/16 v2, 0x2bc

    .line 50
    .line 51
    invoke-static {v1, p1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    .line 56
    .line 57
    const-string/jumbo p1, "rotation_memorization_timeout_millis"

    .line 58
    .line 59
    .line 60
    const-wide/16 v2, 0xbb8

    .line 61
    .line 62
    invoke-static {v1, p1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationMemorizationTimeoutMillis:J

    .line 67
    .line 68
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, "OrientationSensorJudge"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, "  "

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string v0, "mDesiredRotation="

    .line 39
    .line 40
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 45
    .line 46
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string/jumbo v1, "mProposedRotation="

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 75
    .line 76
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string/jumbo v1, "mTouching="

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 105
    .line 106
    const-string/jumbo v2, "mTouchEndedTimestampNanos="

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-wide v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p2, "mLastRotationResolution="

    .line 134
    .line 135
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    .line 139
    .line 140
    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final evaluateRotationChangeLocked()I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 17
    .line 18
    :goto_0
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mUnfoldEventDetected:Z

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 36
    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    iget-wide v3, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 41
    .line 42
    const-wide/32 v5, 0x1dcd6500

    .line 43
    .line 44
    .line 45
    add-long/2addr v3, v5

    .line 46
    cmp-long v3, v0, v3

    .line 47
    .line 48
    if-gez v3, :cond_4

    .line 49
    .line 50
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 55
    .line 56
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 57
    .line 58
    return v0
.end method

.method public final finalizeRotation(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v0, -0x1

    .line 14
    if-lt p1, v0, :cond_0

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolutionTimeStamp:J

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method

.method public final getProposedRotationLocked()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 2
    .line 3
    return p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorAdditionalInfo(Landroid/hardware/SensorAdditionalInfo;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/hardware/SensorAdditionalInfo;->type:I

    .line 2
    .line 3
    const v1, 0x10000004

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object p1, p1, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    aget p1, p1, v0

    .line 12
    .line 13
    float-to-int p1, p1

    .line 14
    const-string/jumbo v1, "onSensorAdditionalInfo, unfolding_info: "

    .line 15
    .line 16
    .line 17
    const-string v2, "WindowOrientationListener"

    .line 18
    .line 19
    invoke-static {p1, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne p1, v1, :cond_0

    .line 24
    .line 25
    move v0, v1

    .line 26
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mUnfoldEventDetected:Z

    .line 27
    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mUnfoldEventDetected:Z

    .line 31
    .line 32
    const-string/jumbo p0, "onUnfoldEventChanged : "

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x1b

    .line 12
    .line 13
    const-string/jumbo v4, "onTableModeChanged: Moving"

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    const-string v6, "WindowOrientationListener"

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    iget-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 23
    .line 24
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 25
    .line 26
    aget v3, v3, v7

    .line 27
    .line 28
    float-to-int v3, v3

    .line 29
    iput v3, v2, Lcom/android/server/wm/WindowOrientationListener;->mLastSensorRotation:I

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v3, "onSensorChanged device orientation: "

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 40
    .line 41
    iget v3, v3, Lcom/android/server/wm/WindowOrientationListener;->mLastSensorRotation:I

    .line 42
    .line 43
    invoke-static {v2, v3, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 47
    .line 48
    iget v3, v2, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    .line 49
    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    iget v3, v2, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    .line 53
    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    iget v3, v2, Lcom/android/server/wm/WindowOrientationListener;->mLastSensorRotation:I

    .line 57
    .line 58
    if-ltz v3, :cond_0

    .line 59
    .line 60
    if-eq v3, v5, :cond_0

    .line 61
    .line 62
    iput v7, v2, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    .line 63
    .line 64
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const v3, 0x10071

    .line 74
    .line 75
    .line 76
    const/4 v8, 0x3

    .line 77
    const/4 v9, 0x1

    .line 78
    if-ne v2, v3, :cond_4

    .line 79
    .line 80
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 81
    .line 82
    aget v3, v2, v7

    .line 83
    .line 84
    const/high16 v10, 0x40400000    # 3.0f

    .line 85
    .line 86
    cmpl-float v3, v3, v10

    .line 87
    .line 88
    if-nez v3, :cond_3

    .line 89
    .line 90
    aget v2, v2, v9

    .line 91
    .line 92
    float-to-int v2, v2

    .line 93
    if-ltz v2, :cond_1

    .line 94
    .line 95
    iget-object v3, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 96
    .line 97
    iget v10, v3, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    .line 98
    .line 99
    if-eq v10, v2, :cond_1

    .line 100
    .line 101
    iput v2, v3, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string/jumbo v3, "onSensorChanged device info: "

    .line 106
    .line 107
    .line 108
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v3, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 112
    .line 113
    iget v3, v3, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v3, ", "

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v10, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 124
    .line 125
    aget v10, v10, v5

    .line 126
    .line 127
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 134
    .line 135
    aget v1, v1, v8

    .line 136
    .line 137
    invoke-static {v2, v1, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 141
    .line 142
    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    .line 143
    .line 144
    if-ne v1, v9, :cond_2

    .line 145
    .line 146
    iget v2, v0, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    .line 147
    .line 148
    if-eq v2, v9, :cond_2

    .line 149
    .line 150
    iput v9, v0, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    .line 151
    .line 152
    const-string/jumbo v0, "onTableModeChanged: Table"

    .line 153
    .line 154
    .line 155
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    if-nez v1, :cond_3

    .line 160
    .line 161
    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener;->mLastSensorRotation:I

    .line 162
    .line 163
    if-ltz v1, :cond_3

    .line 164
    .line 165
    if-eq v1, v5, :cond_3

    .line 166
    .line 167
    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    .line 168
    .line 169
    if-ne v1, v9, :cond_3

    .line 170
    .line 171
    iput v7, v0, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    .line 172
    .line 173
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :cond_3
    :goto_0
    return-void

    .line 177
    :cond_4
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 178
    .line 179
    aget v2, v2, v7

    .line 180
    .line 181
    float-to-int v13, v2

    .line 182
    const/4 v2, -0x1

    .line 183
    if-lt v13, v2, :cond_10

    .line 184
    .line 185
    if-le v13, v8, :cond_5

    .line 186
    .line 187
    goto/16 :goto_5

    .line 188
    .line 189
    :cond_5
    iget-wide v3, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 190
    .line 191
    if-eqz v13, :cond_9

    .line 192
    .line 193
    if-eq v13, v9, :cond_8

    .line 194
    .line 195
    if-eq v13, v5, :cond_7

    .line 196
    .line 197
    if-eq v13, v8, :cond_6

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_6
    const/4 v7, 0x4

    .line 201
    goto :goto_1

    .line 202
    :cond_7
    move v7, v8

    .line 203
    goto :goto_1

    .line 204
    :cond_8
    move v7, v5

    .line 205
    goto :goto_1

    .line 206
    :cond_9
    move v7, v9

    .line 207
    :goto_1
    const/16 v1, 0x14d

    .line 208
    .line 209
    invoke-static {v1, v3, v4, v7, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJII)V

    .line 210
    .line 211
    .line 212
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/android/server/wm/WindowOrientationListener;->isRotationResolverEnabled()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_f

    .line 219
    .line 220
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 221
    .line 222
    check-cast v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 223
    .line 224
    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 225
    .line 226
    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 227
    .line 228
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_b

    .line 233
    .line 234
    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    .line 235
    .line 236
    if-eq v1, v2, :cond_a

    .line 237
    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 239
    .line 240
    .line 241
    move-result-wide v1

    .line 242
    iget-wide v3, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolutionTimeStamp:J

    .line 243
    .line 244
    sub-long/2addr v1, v3

    .line 245
    iget-wide v3, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationMemorizationTimeoutMillis:J

    .line 246
    .line 247
    cmp-long v1, v1, v3

    .line 248
    .line 249
    if-gez v1, :cond_a

    .line 250
    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v2, "Reusing the last rotation resolution: "

    .line 254
    .line 255
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    .line 259
    .line 260
    invoke-static {v1, v2, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mLastRotationResolution:I

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 270
    .line 271
    iget v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mDefaultRotation:I

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    .line 274
    .line 275
    .line 276
    :goto_2
    return-void

    .line 277
    :cond_b
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 278
    .line 279
    iget-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    .line 280
    .line 281
    if-nez v2, :cond_c

    .line 282
    .line 283
    const-class v2, Landroid/rotationresolver/RotationResolverInternal;

    .line 284
    .line 285
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    check-cast v2, Landroid/rotationresolver/RotationResolverInternal;

    .line 290
    .line 291
    iput-object v2, v1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    .line 292
    .line 293
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 294
    .line 295
    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    .line 296
    .line 297
    if-nez v1, :cond_c

    .line 298
    .line 299
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 304
    .line 305
    if-eqz v1, :cond_d

    .line 306
    .line 307
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 308
    .line 309
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 310
    .line 311
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 312
    .line 313
    if-eqz v1, :cond_d

    .line 314
    .line 315
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 316
    .line 317
    if-eqz v1, :cond_d

    .line 318
    .line 319
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 320
    .line 321
    if-eqz v1, :cond_d

    .line 322
    .line 323
    :goto_3
    move-object v12, v1

    .line 324
    goto :goto_4

    .line 325
    :cond_d
    const/4 v1, 0x0

    .line 326
    goto :goto_3

    .line 327
    :goto_4
    iget v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    .line 328
    .line 329
    add-int/2addr v1, v9

    .line 330
    iput v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    .line 331
    .line 332
    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;

    .line 333
    .line 334
    if-eqz v1, :cond_e

    .line 335
    .line 336
    iget-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 337
    .line 338
    iget-object v2, v2, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 339
    .line 340
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 341
    .line 342
    .line 343
    :cond_e
    new-instance v1, Landroid/os/CancellationSignal;

    .line 344
    .line 345
    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 346
    .line 347
    .line 348
    new-instance v2, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;

    .line 349
    .line 350
    invoke-direct {v2, v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;-><init>(Landroid/os/CancellationSignal;)V

    .line 351
    .line 352
    .line 353
    iput-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;

    .line 354
    .line 355
    iget-object v3, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 356
    .line 357
    iget-object v3, v3, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 358
    .line 359
    iget-wide v4, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    .line 360
    .line 361
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    .line 363
    .line 364
    iget-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 365
    .line 366
    iget-object v10, v2, Lcom/android/server/wm/WindowOrientationListener;->mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

    .line 367
    .line 368
    new-instance v11, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;

    .line 369
    .line 370
    invoke-direct {v11, v0, v13}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;-><init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V

    .line 371
    .line 372
    .line 373
    iget-object v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 374
    .line 375
    iget v14, v2, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    .line 376
    .line 377
    iget-wide v2, v0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationResolverTimeoutMillis:J

    .line 378
    .line 379
    move-wide v15, v2

    .line 380
    move-object/from16 v17, v1

    .line 381
    .line 382
    invoke-virtual/range {v10 .. v17}, Landroid/rotationresolver/RotationResolverInternal;->resolveRotation(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Ljava/lang/String;IIJLandroid/os/CancellationSignal;)V

    .line 383
    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_f
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    .line 387
    .line 388
    .line 389
    :cond_10
    :goto_5
    return-void
.end method

.method public final onTouchEndLocked(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 5
    .line 6
    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 7
    .line 8
    iget p2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 9
    .line 10
    if-eq p1, p2, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onTouchStartLocked()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 3
    .line 4
    return-void
.end method

.method public final resetLocked()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 3
    .line 4
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 8
    .line 9
    const-wide/high16 v1, -0x8000000000000000L

    .line 10
    .line 11
    iput-wide v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final scheduleRotationEvaluationIfNecessaryLocked(J)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 2
    .line 3
    const-string v1, "WindowOrientationListener"

    .line 4
    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mUnfoldEventDetected:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    sget-boolean p0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const-string/jumbo p0, "scheduleRotationEvaluationLocked: ignoring, user is still touching the screen."

    .line 27
    .line 28
    .line 29
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :cond_2
    iget-wide v2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 34
    .line 35
    const-wide/32 v4, 0x1dcd6500

    .line 36
    .line 37
    .line 38
    add-long/2addr v2, v4

    .line 39
    cmp-long v0, p1, v2

    .line 40
    .line 41
    if-ltz v0, :cond_4

    .line 42
    .line 43
    sget-boolean p0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    .line 44
    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    const-string/jumbo p0, "scheduleRotationEvaluationLocked: ignoring, already past the next possible time of rotation."

    .line 48
    .line 49
    .line 50
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void

    .line 54
    :cond_4
    sub-long/2addr v2, p1

    .line 55
    long-to-float p1, v2

    .line 56
    const p2, 0x358637bd    # 1.0E-6f

    .line 57
    .line 58
    .line 59
    mul-float/2addr p1, p2

    .line 60
    float-to-double p1, p1

    .line 61
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    double-to-long p1, p1

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$2;

    .line 71
    .line 72
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 77
    .line 78
    return-void

    .line 79
    :cond_5
    :goto_0
    sget-boolean p0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    .line 80
    .line 81
    if-eqz p0, :cond_6

    .line 82
    .line 83
    const-string/jumbo p0, "scheduleRotationEvaluationLocked: ignoring, an evaluation is already scheduled or is unnecessary."

    .line 84
    .line 85
    .line 86
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_6
    return-void
.end method

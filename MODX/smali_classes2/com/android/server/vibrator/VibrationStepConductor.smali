.class public final Lcom/android/server/vibrator/VibrationStepConductor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final EMPTY_STEP_LIST:Ljava/util/List;


# instance fields
.field public mCancelledImmediately:Z

.field public mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

.field public final mComposed:Landroid/os/VibrationEffect$Composed;

.field public final mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

.field public mDynamicEffectLoop:I

.field public final mLock:Ljava/lang/Object;

.field public final mNextSteps:Ljava/util/PriorityQueue;

.field public final mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

.field public mPendingVibrateSteps:I

.field public mRemainingStartSequentialEffectSteps:I

.field public final mRequestVibrationParamsFuture:Ljava/util/concurrent/CompletableFuture;

.field public mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

.field public mSignalCancelImmediate:Z

.field public final mSignalVibratorsComplete:Landroid/util/IntArray;

.field public final mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

.field public mSuccessfulVibratorOnSteps:I

.field public final mVibration:Lcom/android/server/vibrator/HalVibration;

.field public final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field public final vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field public final vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceAdapter;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/util/concurrent/CompletableFuture;Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/PriorityQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 40
    .line 41
    iput-object p4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 42
    .line 43
    iput-object p5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 44
    .line 45
    iput-object p6, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRequestVibrationParamsFuture:Ljava/util/concurrent/CompletableFuture;

    .line 46
    .line 47
    iput-object p7, p0, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 48
    .line 49
    const/4 p2, -0x1

    .line 50
    iput p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I

    .line 51
    .line 52
    iget-object p2, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 53
    .line 54
    iget-object p2, p2, Lcom/android/server/vibrator/Vibration$CallerInfo;->reason:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    const-string p3, "DynamicEffect_"

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_0

    .line 65
    .line 66
    :try_start_0
    iget-object p2, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 67
    .line 68
    iget-object p2, p2, Lcom/android/server/vibrator/Vibration$CallerInfo;->reason:Ljava/lang/String;

    .line 69
    .line 70
    const-string p4, ""

    .line 71
    .line 72
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iput p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    const-string p2, "VibrationThread"

    .line 84
    .line 85
    const-string p3, "Failed to parse DynamicEffect reason."

    .line 86
    .line 87
    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_0
    :goto_0
    new-instance p2, Landroid/util/IntArray;

    .line 91
    .line 92
    iget-object p3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 93
    .line 94
    iget-object p3, p3, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    .line 95
    .line 96
    array-length p3, p3

    .line 97
    invoke-direct {p2, p3}, Landroid/util/IntArray;-><init>(I)V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 103
    .line 104
    instance-of p2, p1, Landroid/os/CombinedVibration$Mono;

    .line 105
    .line 106
    if-eqz p2, :cond_1

    .line 107
    .line 108
    check-cast p1, Landroid/os/CombinedVibration$Mono;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroid/os/VibrationEffect$Composed;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mComposed:Landroid/os/VibrationEffect$Composed;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    instance-of p2, p1, Landroid/os/CombinedVibration$Stereo;

    .line 120
    .line 121
    if-eqz p2, :cond_2

    .line 122
    .line 123
    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Landroid/os/VibrationEffect$Composed;

    .line 134
    .line 135
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mComposed:Landroid/os/VibrationEffect$Composed;

    .line 136
    .line 137
    :cond_2
    :goto_1
    return-void
.end method

.method public static expectIsVibrationThread(Z)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/android/server/vibrator/VibrationThread;

    .line 6
    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "Thread caller assertion failed, expected isVibrationThread="

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "VibrationStepConductor"

    .line 24
    .line 25
    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "VibrationThread"

    .line 2
    .line 3
    const-string v1, "Binder died, cancelling vibration..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 9
    .line 10
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final isFinished()Z
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    :goto_0
    return v1
.end method

.method public final nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;
    .locals 12

    .line 1
    move-object v1, p0

    .line 2
    move-wide v2, p1

    .line 3
    move-wide/from16 v9, p6

    .line 4
    .line 5
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v4}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    if-lt v5, v0, :cond_2

    .line 24
    .line 25
    iget v0, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I

    .line 26
    .line 27
    if-le v0, v4, :cond_1

    .line 28
    .line 29
    sub-int/2addr v0, v4

    .line 30
    iput v0, v1, Lcom/android/server/vibrator/VibrationStepConductor;->mDynamicEffectLoop:I

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_0
    move v6, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v6, v5

    .line 41
    :goto_1
    if-gez v6, :cond_3

    .line 42
    .line 43
    new-instance v8, Lcom/android/server/vibrator/CompleteEffectVibratorStep;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    move-object v0, v8

    .line 47
    move-object v1, p0

    .line 48
    move-wide v2, p1

    .line 49
    move-object v5, p3

    .line 50
    move-wide/from16 v6, p6

    .line 51
    .line 52
    invoke-direct/range {v0 .. v7}, Lcom/android/server/vibrator/CompleteEffectVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V

    .line 53
    .line 54
    .line 55
    return-object v8

    .line 56
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 65
    .line 66
    instance-of v4, v0, Landroid/os/vibrator/PrebakedSegment;

    .line 67
    .line 68
    if-eqz v4, :cond_4

    .line 69
    .line 70
    new-instance v11, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;

    .line 71
    .line 72
    invoke-static {p1, p2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    move-object v0, v11

    .line 77
    move-object v1, p0

    .line 78
    move-object v4, p3

    .line 79
    move-object/from16 v5, p4

    .line 80
    .line 81
    move-wide/from16 v7, p6

    .line 82
    .line 83
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 84
    .line 85
    .line 86
    return-object v11

    .line 87
    :cond_4
    instance-of v4, v0, Landroid/os/vibrator/PrimitiveSegment;

    .line 88
    .line 89
    if-eqz v4, :cond_5

    .line 90
    .line 91
    new-instance v11, Lcom/android/server/vibrator/ComposePrimitivesVibratorStep;

    .line 92
    .line 93
    invoke-static {p1, p2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    move-object v0, v11

    .line 98
    move-object v1, p0

    .line 99
    move-object v4, p3

    .line 100
    move-object/from16 v5, p4

    .line 101
    .line 102
    move-wide/from16 v7, p6

    .line 103
    .line 104
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 105
    .line 106
    .line 107
    return-object v11

    .line 108
    :cond_5
    instance-of v4, v0, Landroid/os/vibrator/RampSegment;

    .line 109
    .line 110
    if-eqz v4, :cond_6

    .line 111
    .line 112
    new-instance v11, Lcom/android/server/vibrator/ComposePwleVibratorStep;

    .line 113
    .line 114
    invoke-static {p1, p2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    move-object v0, v11

    .line 119
    move-object v1, p0

    .line 120
    move-object v4, p3

    .line 121
    move-object/from16 v5, p4

    .line 122
    .line 123
    move-wide/from16 v7, p6

    .line 124
    .line 125
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 126
    .line 127
    .line 128
    return-object v11

    .line 129
    :cond_6
    instance-of v0, v0, Landroid/os/vibrator/SemHapticSegment;

    .line 130
    .line 131
    if-eqz v0, :cond_7

    .line 132
    .line 133
    new-instance v11, Lcom/android/server/vibrator/SemHapticStep;

    .line 134
    .line 135
    move-object v0, v11

    .line 136
    move-object v1, p0

    .line 137
    move-wide v2, p1

    .line 138
    move-object v4, p3

    .line 139
    move-object/from16 v5, p4

    .line 140
    .line 141
    move-wide/from16 v7, p6

    .line 142
    .line 143
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 144
    .line 145
    .line 146
    iput-wide v9, v11, Lcom/android/server/vibrator/SemHapticStep;->mNextOffTime:J

    .line 147
    .line 148
    return-object v11

    .line 149
    :cond_7
    new-instance v11, Lcom/android/server/vibrator/SetAmplitudeVibratorStep;

    .line 150
    .line 151
    move-object v0, v11

    .line 152
    move-object v1, p0

    .line 153
    move-wide v2, p1

    .line 154
    move-object v4, p3

    .line 155
    move-object/from16 v5, p4

    .line 156
    .line 157
    move-wide/from16 v7, p6

    .line 158
    .line 159
    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 160
    .line 161
    .line 162
    return-object v11
.end method

.method public final notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V
    .locals 5

    .line 1
    const-string v0, "Vibration cancel request new signal="

    .line 2
    .line 3
    const-string v1, "Vibration cancel request ignored as the vibration "

    .line 4
    .line 5
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const-string v2, "VibrationThread"

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "Vibration cancel requested with signal="

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, ", immediate="

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v2, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/Vibration$Status;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "CANCEL"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    const-string v2, "VibrationThread"

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v4, "Vibration cancel requested with bad signal="

    .line 59
    .line 60
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p1, ", using CANCELLED_UNKNOWN_REASON to ensure cancellation."

    .line 67
    .line 68
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance p1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 79
    .line 80
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_UNKNOWN_REASON:Lcom/android/server/vibrator/Vibration$Status;

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-direct {p1, v2, v3}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter v2

    .line 89
    if-eqz p2, :cond_2

    .line 90
    .line 91
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    .line 92
    .line 93
    if-nez v3, :cond_3

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 99
    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    :cond_3
    const-string p1, "VibrationThread"

    .line 103
    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 110
    .line 111
    iget-wide v0, v0, Lcom/android/server/vibrator/Vibration;->id:J

    .line 112
    .line 113
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, "is already being cancelled with signal="

    .line 117
    .line 118
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 122
    .line 123
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, ", immediate="

    .line 127
    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    .line 132
    .line 133
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    monitor-exit v2

    .line 144
    return-void

    .line 145
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    .line 146
    .line 147
    or-int/2addr p2, v1

    .line 148
    iput-boolean p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    .line 149
    .line 150
    if-nez v3, :cond_5

    .line 151
    .line 152
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_5
    const-string p2, "VibrationThread"

    .line 156
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string p1, " ignored as the vibration was already cancelled with signal="

    .line 166
    .line 167
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 171
    .line 172
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string p1, ", but immediate flag was updated to "

    .line 176
    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-boolean p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    .line 181
    .line 182
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    :goto_1
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRequestVibrationParamsFuture:Ljava/util/concurrent/CompletableFuture;

    .line 193
    .line 194
    if-eqz p1, :cond_6

    .line 195
    .line 196
    const/4 p2, 0x1

    .line 197
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 198
    .line 199
    .line 200
    :cond_6
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 203
    .line 204
    .line 205
    monitor-exit v2

    .line 206
    return-void

    .line 207
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    throw p0
.end method

.method public final notifySyncedVibrationComplete()V
    .locals 6

    .line 1
    const-string v0, "VibrationThread"

    .line 2
    .line 3
    const-string v1, "Synced vibration complete reported by vibrator manager"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    aget v4, v1, v3

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Landroid/util/IntArray;->add(I)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final pollNext()Lcom/android/server/vibrator/Step;
    .locals 1

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    .line 18
    .line 19
    check-cast p0, Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/server/vibrator/Step;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/vibrator/Step;

    .line 35
    .line 36
    return-object p0
.end method

.method public final prepareToStart()V
    .locals 17

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v2, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 16
    .line 17
    const/16 v3, 0x10

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_9

    .line 24
    .line 25
    invoke-static {}, Landroid/os/vibrator/Flags;->adaptiveHapticsEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    const-string v2, "VibrationThread"

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mRequestVibrationParamsFuture:Ljava/util/concurrent/CompletableFuture;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_2
    :try_start_0
    iget-object v4, v7, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 44
    .line 45
    iget-object v4, v4, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsTimeoutMs()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    int-to-long v4, v4

    .line 52
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 53
    .line 54
    invoke-virtual {v0, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :catch_1
    move-exception v0

    .line 63
    goto :goto_2

    .line 64
    :goto_0
    const-string v4, "Failed to retrieve vibration params."

    .line 65
    .line 66
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :goto_1
    const-string v4, "Request for vibration params cancelled, maybe superseded or vibrator controller unregistered. Skipping params..."

    .line 71
    .line 72
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :goto_2
    const-string v4, "Request for vibration params timed out"

    .line 77
    .line 78
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    iget-object v0, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 82
    .line 83
    iget-object v2, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 86
    .line 87
    iget v2, v2, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    const-string/jumbo v0, "vibrator.value_vibration_param_request_timeout"

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v2}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_3
    iget-object v0, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 99
    .line 100
    iget-object v2, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 101
    .line 102
    iget-object v4, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 103
    .line 104
    iget-object v4, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    invoke-virtual {v2, v4}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    iput v5, v0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Lcom/android/server/vibrator/VibrationScaler;->getAdaptiveHapticsScale(I)F

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    iput v5, v0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    .line 121
    .line 122
    iget-object v6, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    const/high16 v8, 0x3f800000    # 1.0f

    .line 128
    .line 129
    invoke-static {v5, v8}, Ljava/lang/Float;->compare(FF)I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-eqz v8, :cond_4

    .line 134
    .line 135
    iput v5, v6, Lcom/android/server/vibrator/VibrationStats;->mAdaptiveScale:F

    .line 136
    .line 137
    :cond_4
    const/4 v5, 0x0

    .line 138
    :goto_4
    iget-object v6, v0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    .line 139
    .line 140
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-ge v5, v6, :cond_a

    .line 145
    .line 146
    iget-object v6, v0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    .line 147
    .line 148
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    check-cast v8, Landroid/os/VibrationEffect;

    .line 153
    .line 154
    instance-of v9, v8, Landroid/os/VibrationEffect$Composed;

    .line 155
    .line 156
    const-string v10, "VibrationScaler"

    .line 157
    .line 158
    if-nez v9, :cond_5

    .line 159
    .line 160
    new-instance v9, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v11, "Error scaling unsupported vibration effect: "

    .line 163
    .line 164
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    invoke-static {v10, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto/16 :goto_6

    .line 178
    .line 179
    :cond_5
    invoke-virtual {v2, v4}, Lcom/android/server/vibrator/VibrationScaler;->getEffectStrength(I)I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    iget-object v11, v2, Lcom/android/server/vibrator/VibrationScaler;->mScaleLevels:Landroid/util/SparseArray;

    .line 184
    .line 185
    invoke-virtual {v2, v4}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    .line 186
    .line 187
    .line 188
    move-result v12

    .line 189
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    check-cast v11, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    .line 194
    .line 195
    invoke-virtual {v2, v4}, Lcom/android/server/vibrator/VibrationScaler;->getAdaptiveHapticsScale(I)F

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    if-nez v11, :cond_6

    .line 200
    .line 201
    new-instance v11, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v13, "No configured scaling level found! (current="

    .line 204
    .line 205
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v13, v2, Lcom/android/server/vibrator/VibrationScaler;->mSettingsController:Lcom/android/server/vibrator/VibrationSettings;

    .line 209
    .line 210
    invoke-virtual {v13, v4}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v14, ", default= "

    .line 218
    .line 219
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-object v13, v13, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 223
    .line 224
    invoke-virtual {v13, v4}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    .line 225
    .line 226
    .line 227
    move-result v13

    .line 228
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v13, ")"

    .line 232
    .line 233
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    sget-object v11, Lcom/android/server/vibrator/VibrationScaler;->SCALE_LEVEL_NONE:Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;

    .line 244
    .line 245
    :cond_6
    move-object v10, v8

    .line 246
    check-cast v10, Landroid/os/VibrationEffect$Composed;

    .line 247
    .line 248
    new-instance v13, Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-virtual {v10}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v14

    .line 254
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 258
    .line 259
    .line 260
    move-result v14

    .line 261
    const/4 v15, 0x0

    .line 262
    :goto_5
    if-ge v15, v14, :cond_7

    .line 263
    .line 264
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v16

    .line 268
    move-object/from16 v3, v16

    .line 269
    .line 270
    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    .line 271
    .line 272
    iget v1, v2, Lcom/android/server/vibrator/VibrationScaler;->mDefaultVibrationAmplitude:I

    .line 273
    .line 274
    invoke-virtual {v3, v1}, Landroid/os/vibrator/VibrationEffectSegment;->resolve(I)Landroid/os/vibrator/VibrationEffectSegment;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v1, v9}, Landroid/os/vibrator/VibrationEffectSegment;->applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    iget v3, v11, Lcom/android/server/vibrator/VibrationScaler$ScaleLevel;->factor:F

    .line 283
    .line 284
    invoke-virtual {v1, v3}, Landroid/os/vibrator/VibrationEffectSegment;->scale(F)Landroid/os/vibrator/VibrationEffectSegment;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v1, v12}, Landroid/os/vibrator/VibrationEffectSegment;->scaleLinearly(F)Landroid/os/vibrator/VibrationEffectSegment;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v13, v15, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    add-int/lit8 v15, v15, 0x1

    .line 296
    .line 297
    const/4 v1, 0x1

    .line 298
    goto :goto_5

    .line 299
    :cond_7
    invoke-virtual {v10}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_8

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_8
    new-instance v8, Landroid/os/VibrationEffect$Composed;

    .line 311
    .line 312
    invoke-virtual {v10}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    invoke-direct {v8, v13, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v8}, Landroid/os/VibrationEffect$Composed;->validate()V

    .line 320
    .line 321
    .line 322
    :goto_6
    invoke-virtual {v6, v5, v8}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    add-int/lit8 v5, v5, 0x1

    .line 326
    .line 327
    const/4 v1, 0x1

    .line 328
    goto/16 :goto_4

    .line 329
    .line 330
    :cond_9
    iget-object v0, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 331
    .line 332
    iget-object v1, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    .line 333
    .line 334
    iget v1, v1, Lcom/android/server/vibrator/VibrationScaler;->mDefaultVibrationAmplitude:I

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/HalVibration;->resolveEffects(I)V

    .line 337
    .line 338
    .line 339
    :cond_a
    iget-object v0, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 340
    .line 341
    iget-object v1, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    .line 342
    .line 343
    iget-object v2, v0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 344
    .line 345
    invoke-virtual {v2, v1}, Landroid/os/CombinedVibration;->adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    iget-object v2, v0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 350
    .line 351
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    if-nez v2, :cond_b

    .line 356
    .line 357
    iput-object v1, v0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 358
    .line 359
    :cond_b
    iget-object v0, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 360
    .line 361
    iget-object v0, v0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    .line 362
    .line 363
    instance-of v1, v0, Landroid/os/CombinedVibration$Sequential;

    .line 364
    .line 365
    if-eqz v1, :cond_c

    .line 366
    .line 367
    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    .line 368
    .line 369
    :goto_7
    move-object v5, v0

    .line 370
    goto :goto_8

    .line 371
    :cond_c
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v1, v0}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    .line 384
    .line 385
    goto :goto_7

    .line 386
    :goto_8
    iget v0, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 387
    .line 388
    const/4 v1, 0x1

    .line 389
    add-int/2addr v0, v1

    .line 390
    iput v0, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 391
    .line 392
    invoke-virtual {v5}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    iput v0, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    .line 401
    .line 402
    iget-object v0, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    .line 403
    .line 404
    new-instance v8, Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 405
    .line 406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 407
    .line 408
    .line 409
    move-result-wide v1

    .line 410
    invoke-virtual {v5}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    const/4 v4, 0x0

    .line 415
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    check-cast v3, Ljava/lang/Integer;

    .line 420
    .line 421
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    int-to-long v3, v3

    .line 426
    add-long/2addr v3, v1

    .line 427
    const/4 v6, 0x0

    .line 428
    move-object v1, v8

    .line 429
    move-object/from16 v2, p0

    .line 430
    .line 431
    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v8}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    iget-object v0, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 438
    .line 439
    iget-object v0, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 440
    .line 441
    iget-wide v1, v0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    .line 442
    .line 443
    const-wide/16 v3, 0x0

    .line 444
    .line 445
    cmp-long v1, v1, v3

    .line 446
    .line 447
    if-lez v1, :cond_d

    .line 448
    .line 449
    goto :goto_9

    .line 450
    :cond_d
    iget-wide v1, v0, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    .line 451
    .line 452
    cmp-long v1, v1, v3

    .line 453
    .line 454
    if-eqz v1, :cond_e

    .line 455
    .line 456
    goto :goto_9

    .line 457
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 458
    .line 459
    .line 460
    move-result-wide v1

    .line 461
    iput-wide v1, v0, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    .line 462
    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 464
    .line 465
    .line 466
    move-result-wide v1

    .line 467
    iput-wide v1, v0, Lcom/android/server/vibrator/VibrationStats;->mStartTimeDebug:J

    .line 468
    .line 469
    :goto_9
    return-void
.end method

.method public final runNextStep()V
    .locals 7

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Playing vibration id "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 23
    .line 24
    iget-wide v3, v3, Lcom/android/server/vibrator/Vibration;->id:J

    .line 25
    .line 26
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    instance-of v3, v0, Lcom/android/server/vibrator/AbstractVibratorStep;

    .line 30
    .line 31
    const-string v4, ""

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v5, " on vibrator "

    .line 38
    .line 39
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object v5, v0

    .line 43
    check-cast v5, Lcom/android/server/vibrator/AbstractVibratorStep;

    .line 44
    .line 45
    invoke-virtual {v5}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object v3, v4

    .line 58
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, " "

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    const-string v4, " (cleanup)"

    .line 84
    .line 85
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v3, "VibrationThread"

    .line 93
    .line 94
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->getVibratorOnDuration()J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    const-wide/16 v5, 0x0

    .line 106
    .line 107
    cmp-long v3, v3, v5

    .line 108
    .line 109
    if-lez v3, :cond_3

    .line 110
    .line 111
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    .line 112
    .line 113
    add-int/2addr v3, v1

    .line 114
    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    .line 115
    .line 116
    :cond_3
    instance-of v3, v0, Lcom/android/server/vibrator/StartSequentialEffectStep;

    .line 117
    .line 118
    if-eqz v3, :cond_4

    .line 119
    .line 120
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    .line 121
    .line 122
    sub-int/2addr v3, v1

    .line 123
    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    .line 124
    .line 125
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_5

    .line 130
    .line 131
    iget v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 132
    .line 133
    sub-int/2addr v0, v1

    .line 134
    iput v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 135
    .line 136
    :cond_5
    const/4 v0, 0x0

    .line 137
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-ge v0, v3, :cond_6

    .line 142
    .line 143
    iget v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 144
    .line 145
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Lcom/android/server/vibrator/Step;

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/android/server/vibrator/Step;->isCleanUp()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    xor-int/2addr v4, v1

    .line 156
    add-int/2addr v3, v4

    .line 157
    iput v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 158
    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_6
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    .line 163
    .line 164
    invoke-virtual {p0, v2}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 165
    .line 166
    .line 167
    :cond_7
    return-void
.end method

.method public final waitUntilNextStepIsDue()Z
    .locals 9

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 12
    .line 13
    .line 14
    :cond_1
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    const-string v3, "VibrationThread"

    .line 28
    .line 29
    const-string v6, "Immediate cancellation signal processed twice"

    .line 30
    .line 31
    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 39
    .line 40
    move v6, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v6, v4

    .line 43
    move-object v3, v5

    .line 44
    :goto_1
    iget-object v7, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 45
    .line 46
    if-eqz v7, :cond_4

    .line 47
    .line 48
    iget-object v8, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 49
    .line 50
    if-nez v8, :cond_4

    .line 51
    .line 52
    move-object v3, v7

    .line 53
    :cond_4
    if-nez v6, :cond_5

    .line 54
    .line 55
    iget-object v7, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    .line 56
    .line 57
    invoke-virtual {v7}, Landroid/util/IntArray;->size()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-lez v7, :cond_5

    .line 62
    .line 63
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    .line 64
    .line 65
    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    iget-object v7, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    .line 70
    .line 71
    invoke-virtual {v7}, Landroid/util/IntArray;->clear()V

    .line 72
    .line 73
    .line 74
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v6, :cond_8

    .line 76
    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 80
    .line 81
    .line 82
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    .line 83
    .line 84
    iput-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 85
    .line 86
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_7
    iput v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_8
    if-eqz v3, :cond_b

    .line 100
    .line 101
    if-eqz v0, :cond_9

    .line 102
    .line 103
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 104
    .line 105
    .line 106
    :cond_9
    iput-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 107
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->pollNext()Lcom/android/server/vibrator/Step;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-eqz v2, :cond_a

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/android/server/vibrator/Step;->cancel()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_a
    iput v4, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 128
    .line 129
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    .line 130
    .line 131
    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 132
    .line 133
    .line 134
    :cond_b
    if-eqz v5, :cond_f

    .line 135
    .line 136
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 137
    .line 138
    if-eqz v0, :cond_c

    .line 139
    .line 140
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 141
    .line 142
    .line 143
    :cond_c
    array-length v0, v5

    .line 144
    move v2, v4

    .line 145
    :goto_4
    if-ge v2, v0, :cond_f

    .line 146
    .line 147
    aget v3, v5, v2

    .line 148
    .line 149
    iget-object v6, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-eqz v7, :cond_e

    .line 160
    .line 161
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    check-cast v7, Lcom/android/server/vibrator/Step;

    .line 166
    .line 167
    invoke-virtual {v7, v3}, Lcom/android/server/vibrator/Step;->acceptVibratorCompleteCallback(I)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    if-eqz v8, :cond_d

    .line 172
    .line 173
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 174
    .line 175
    .line 176
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    .line 177
    .line 178
    check-cast v3, Ljava/util/LinkedList;

    .line 179
    .line 180
    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_f
    :goto_5
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    .line 187
    .line 188
    if-eqz v0, :cond_10

    .line 189
    .line 190
    return v4

    .line 191
    :cond_10
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingOnVibratorCompleteSteps:Ljava/util/Queue;

    .line 192
    .line 193
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_11

    .line 198
    .line 199
    return v1

    .line 200
    :cond_11
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mNextSteps:Ljava/util/PriorityQueue;

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, Lcom/android/server/vibrator/Step;

    .line 207
    .line 208
    if-nez v0, :cond_12

    .line 209
    .line 210
    return v1

    .line 211
    :cond_12
    iget-wide v2, v0, Lcom/android/server/vibrator/Step;->startTime:J

    .line 212
    .line 213
    const-wide v5, 0x7fffffffffffffffL

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    cmp-long v0, v2, v5

    .line 219
    .line 220
    const-wide/16 v5, 0x0

    .line 221
    .line 222
    if-nez v0, :cond_13

    .line 223
    .line 224
    move-wide v2, v5

    .line 225
    goto :goto_6

    .line 226
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 227
    .line 228
    .line 229
    move-result-wide v7

    .line 230
    sub-long/2addr v2, v7

    .line 231
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 232
    .line 233
    .line 234
    move-result-wide v2

    .line 235
    :goto_6
    cmp-long v0, v2, v5

    .line 236
    .line 237
    if-gtz v0, :cond_14

    .line 238
    .line 239
    return v1

    .line 240
    :cond_14
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    .line 241
    .line 242
    monitor-enter v0

    .line 243
    :try_start_1
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 244
    .line 245
    if-eqz v5, :cond_15

    .line 246
    .line 247
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 248
    .line 249
    .line 250
    :cond_15
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancel:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 251
    .line 252
    if-eqz v1, :cond_16

    .line 253
    .line 254
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 255
    .line 256
    if-eqz v1, :cond_18

    .line 257
    .line 258
    :cond_16
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalCancelImmediate:Z

    .line 259
    .line 260
    if-eqz v1, :cond_17

    .line 261
    .line 262
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledImmediately:Z

    .line 263
    .line 264
    if-eqz v1, :cond_18

    .line 265
    .line 266
    :cond_17
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    .line 267
    .line 268
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-lez v1, :cond_19

    .line 273
    .line 274
    :cond_18
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
    return v4

    .line 276
    :catchall_1
    move-exception p0

    .line 277
    goto :goto_7

    .line 278
    :cond_19
    :try_start_2
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    .line 279
    .line 280
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 281
    .line 282
    .line 283
    :catch_0
    :try_start_3
    monitor-exit v0

    .line 284
    return v4

    .line 285
    :goto_7
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    throw p0

    .line 287
    :goto_8
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 288
    throw p0
.end method

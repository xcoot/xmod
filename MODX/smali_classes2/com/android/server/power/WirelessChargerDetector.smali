.class public Lcom/android/server/power/WirelessChargerDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MOVEMENT_ANGLE_COS_THRESHOLD:D


# instance fields
.field public mAtRest:Z

.field public mDetectionInProgress:Z

.field public mDetectionStartTime:J

.field public mFirstSampleX:F

.field public mFirstSampleY:F

.field public mFirstSampleZ:F

.field public final mGravitySensor:Landroid/hardware/Sensor;

.field public final mHandler:Landroid/os/Handler;

.field public mLastSampleX:F

.field public mLastSampleY:F

.field public mLastSampleZ:F

.field public final mListener:Lcom/android/server/power/WirelessChargerDetector$1;

.field public final mLock:Ljava/lang/Object;

.field public mMovingSamples:I

.field public mMustUpdateRestPosition:Z

.field public mPoweredWirelessly:Z

.field public mRestX:F

.field public mRestY:F

.field public mRestZ:F

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSensorTimeout:Lcom/android/server/power/WirelessChargerDetector$2;

.field public final mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

.field public mTotalSamples:I


# direct methods
.method public static -$$Nest$mfinishDetectionLocked(Lcom/android/server/power/WirelessChargerDetector;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mListener:Lcom/android/server/power/WirelessChargerDetector$1;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorTimeout:Lcom/android/server/power/WirelessChargerDetector$2;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    .line 28
    .line 29
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    .line 30
    .line 31
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    .line 32
    .line 33
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    if-ge v0, v2, :cond_0

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "Wireless charger detector is broken.  Only received "

    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    .line 46
    .line 47
    const-string v3, " samples from the gravity sensor but we need at least 3 and we expect to see about 16 on average."

    .line 48
    .line 49
    const-string v4, "WirelessChargerDetector"

    .line 50
    .line 51
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    .line 61
    .line 62
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    .line 63
    .line 64
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    .line 65
    .line 66
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    .line 67
    .line 68
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    .line 69
    .line 70
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    .line 71
    .line 72
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    .line 73
    .line 74
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    .line 75
    .line 76
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->release()V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method public static -$$Nest$mprocessSampleLocked(Lcom/android/server/power/WirelessChargerDetector;FFF)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    .line 6
    .line 7
    iput p2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    .line 8
    .line 9
    iput p3, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    add-int/2addr v0, v1

    .line 15
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iput p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    .line 20
    .line 21
    iput p2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    .line 22
    .line 23
    iput p3, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    .line 27
    .line 28
    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    .line 29
    .line 30
    iget v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    .line 31
    .line 32
    move v5, p1

    .line 33
    move v6, p2

    .line 34
    move v7, p3

    .line 35
    invoke-static/range {v2 .. v7}, Lcom/android/server/power/WirelessChargerDetector;->hasMoved(FFFFFF)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    .line 42
    .line 43
    add-int/2addr v0, v1

    .line 44
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    .line 45
    .line 46
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    .line 51
    .line 52
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    .line 53
    .line 54
    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    .line 55
    .line 56
    move v4, p1

    .line 57
    move v5, p2

    .line 58
    move v6, p3

    .line 59
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/WirelessChargerDetector;->hasMoved(FFFFFF)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    .line 70
    .line 71
    iput p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    .line 72
    .line 73
    iput p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x3fb657184ae74487L    # 0.08726646259971647

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sput-wide v0, Lcom/android/server/power/WirelessChargerDetector;->MOVEMENT_ANGLE_COS_THRESHOLD:D

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/power/WirelessChargerDetector$1;-><init>(Lcom/android/server/power/WirelessChargerDetector;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mListener:Lcom/android/server/power/WirelessChargerDetector$1;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/power/WirelessChargerDetector$2;-><init>(Lcom/android/server/power/WirelessChargerDetector;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorTimeout:Lcom/android/server/power/WirelessChargerDetector$2;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/power/WirelessChargerDetector;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    const/16 p2, 0x9

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    .line 38
    .line 39
    return-void
.end method

.method public static hasMoved(FFFFFF)Z
    .locals 6

    .line 1
    mul-float v0, p0, p3

    .line 2
    .line 3
    mul-float v1, p1, p4

    .line 4
    .line 5
    add-float/2addr v1, v0

    .line 6
    mul-float v0, p2, p5

    .line 7
    .line 8
    add-float/2addr v0, v1

    .line 9
    float-to-double v0, v0

    .line 10
    mul-float/2addr p0, p0

    .line 11
    mul-float/2addr p1, p1

    .line 12
    add-float/2addr p1, p0

    .line 13
    mul-float/2addr p2, p2

    .line 14
    add-float/2addr p2, p1

    .line 15
    float-to-double p0, p2

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    mul-float/2addr p3, p3

    .line 21
    mul-float/2addr p4, p4

    .line 22
    add-float/2addr p4, p3

    .line 23
    mul-float/2addr p5, p5

    .line 24
    add-float/2addr p5, p4

    .line 25
    float-to-double p2, p5

    .line 26
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide p2

    .line 30
    const-wide p4, 0x40219d0140000000L    # 8.806650161743164

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    cmpg-double v2, p0, p4

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    if-ltz v2, :cond_2

    .line 39
    .line 40
    const-wide v4, 0x40259d0140000000L    # 10.806650161743164

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmpl-double v2, p0, v4

    .line 46
    .line 47
    if-gtz v2, :cond_2

    .line 48
    .line 49
    cmpg-double p4, p2, p4

    .line 50
    .line 51
    if-ltz p4, :cond_2

    .line 52
    .line 53
    cmpl-double p4, p2, v4

    .line 54
    .line 55
    if-lez p4, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    mul-double/2addr p0, p2

    .line 59
    sget-wide p2, Lcom/android/server/power/WirelessChargerDetector;->MOVEMENT_ANGLE_COS_THRESHOLD:D

    .line 60
    .line 61
    mul-double/2addr p0, p2

    .line 62
    cmpg-double p0, v0, p0

    .line 63
    .line 64
    if-gez p0, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v3, 0x0

    .line 68
    :cond_2
    :goto_0
    return v3
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 13

    .line 1
    const-string v0, "  mLastSampleX="

    .line 2
    .line 3
    const-string v1, "  mFirstSampleX="

    .line 4
    .line 5
    const-string v2, "  mMovingSamples="

    .line 6
    .line 7
    const-string v3, "  mTotalSamples="

    .line 8
    .line 9
    const-string v4, "  mMustUpdateRestPosition="

    .line 10
    .line 11
    const-string v5, "  mDetectionStartTime="

    .line 12
    .line 13
    const-string v6, "  mDetectionInProgress="

    .line 14
    .line 15
    const-string v7, "  mRestX="

    .line 16
    .line 17
    const-string v8, "  mAtRest="

    .line 18
    .line 19
    const-string v9, "  mPoweredWirelessly="

    .line 20
    .line 21
    const-string v10, "  mGravitySensor="

    .line 22
    .line 23
    iget-object v11, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v11

    .line 26
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 27
    .line 28
    .line 29
    const-string v12, "Wireless Charger Detector State:"

    .line 30
    .line 31
    invoke-virtual {p1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v12, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v10, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    .line 40
    .line 41
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v10, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-boolean v9, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    .line 57
    .line 58
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v9, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-boolean v8, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    .line 74
    .line 75
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget v7, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    .line 91
    .line 92
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v7, ", mRestY="

    .line 96
    .line 97
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget v7, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    .line 101
    .line 102
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v7, ", mRestZ="

    .line 106
    .line 107
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v7, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    .line 111
    .line 112
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-boolean v6, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    .line 128
    .line 129
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-wide v7, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    .line 145
    .line 146
    const-wide/16 v9, 0x0

    .line 147
    .line 148
    cmp-long v5, v7, v9

    .line 149
    .line 150
    if-nez v5, :cond_0

    .line 151
    .line 152
    const-string v5, "0 (never)"

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :catchall_0
    move-exception p0

    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :cond_0
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    .line 178
    .line 179
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    .line 195
    .line 196
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    .line 212
    .line 213
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    .line 229
    .line 230
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v1, ", mFirstSampleY="

    .line 234
    .line 235
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    .line 239
    .line 240
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v1, ", mFirstSampleZ="

    .line 244
    .line 245
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    .line 249
    .line 250
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    .line 266
    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v0, ", mLastSampleY="

    .line 271
    .line 272
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    .line 276
    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v0, ", mLastSampleZ="

    .line 281
    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget p0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    .line 286
    .line 287
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    monitor-exit v11

    .line 298
    return-void

    .line 299
    :goto_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    throw p0
.end method

.method public final startDetectionLocked()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mListener:Lcom/android/server/power/WirelessChargerDetector$1;

    .line 12
    .line 13
    const v3, 0xc350

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string/jumbo v0, "unknown"

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSuspendBlocker:Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->acquire(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    iput-wide v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    .line 41
    .line 42
    iput v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorTimeout:Lcom/android/server/power/WirelessChargerDetector$2;

    .line 47
    .line 48
    invoke-static {v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v2, 0x320

    .line 56
    .line 57
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.class public abstract Lcom/android/server/wm/WindowOrientationListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LOG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentRotation:I

.field public final mDefaultRotation:I

.field public final mDeviceInfoSensor:Landroid/hardware/Sensor;

.field public mEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mLastSensorRotation:I

.field public final mLock:Ljava/lang/Object;

.field mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

.field public mProposedTableMode:I

.field public final mRate:I

.field mRotationResolverService:Landroid/rotationresolver/RotationResolverInternal;

.field public final mSensor:Landroid/hardware/Sensor;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mTableMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "debug.orientation.log"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    .line 21
    .line 22
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLastSensorRotation:I

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    .line 26
    .line 27
    iput p3, p0, Lcom/android/server/wm/WindowOrientationListener;->mDefaultRotation:I

    .line 28
    .line 29
    const-string/jumbo p3, "sensor"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Landroid/hardware/SensorManager;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    .line 42
    .line 43
    const/16 v1, 0x1b

    .line 44
    .line 45
    invoke-virtual {p3, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/hardware/Sensor;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move-object p2, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    new-instance p2, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    .line 79
    .line 80
    invoke-direct {p2, p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;)V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 84
    .line 85
    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 86
    .line 87
    const p3, 0x10071

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    .line 95
    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    const-string p2, "WindowOrientationListener"

    .line 99
    .line 100
    const-string/jumbo p3, "supports device_common_info"

    .line 101
    .line 102
    .line 103
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 107
    .line 108
    if-nez p2, :cond_4

    .line 109
    .line 110
    iget-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 111
    .line 112
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 117
    .line 118
    if-eqz p2, :cond_4

    .line 119
    .line 120
    new-instance p2, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;

    .line 121
    .line 122
    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/WindowOrientationListener$AccelSensorJudge;-><init>(Lcom/android/server/wm/WindowOrientationListener;Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    iput-object p2, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 126
    .line 127
    :cond_4
    return-void
.end method


# virtual methods
.method public final enable$1()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string p0, "WindowOrientationListener"

    .line 9
    .line 10
    const-string v1, "Cannot detect sensors. Not enabled"

    .line 11
    .line 12
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :cond_1
    sget-boolean v1, Lcom/android/server/wm/WindowOrientationListener;->LOG:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const-string v1, "WindowOrientationListener"

    .line 30
    .line 31
    const-string v2, "WindowOrientationListener enabled clearCurrentRotation=true"

    .line 32
    .line 33
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->resetLocked()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x1

    .line 48
    if-ne v1, v2, :cond_3

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 53
    .line 54
    iget-object v5, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 55
    .line 56
    iget v6, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    .line 57
    .line 58
    iget-object v8, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 59
    .line 60
    const v7, 0x186a0

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mDeviceInfoSensor:Landroid/hardware/Sensor;

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    const/4 v3, -0x1

    .line 72
    iput v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mTableMode:I

    .line 73
    .line 74
    iput v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mProposedTableMode:I

    .line 75
    .line 76
    iput v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mLastSensorRotation:I

    .line 77
    .line 78
    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 81
    .line 82
    const/4 v5, 0x3

    .line 83
    invoke-virtual {v3, v4, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 87
    .line 88
    iget-object v3, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/android/server/wm/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 91
    .line 92
    iget v5, p0, Lcom/android/server/wm/WindowOrientationListener;->mRate:I

    .line 93
    .line 94
    iget-object v6, p0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 95
    .line 96
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 97
    .line 98
    .line 99
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    .line 100
    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0
.end method

.method public final getProposedRotation()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowOrientationListener;->mEnabled:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;->getProposedRotationLocked()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    const/4 p0, -0x1

    .line 20
    return p0

    .line 21
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public abstract isRotationResolverEnabled()Z
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

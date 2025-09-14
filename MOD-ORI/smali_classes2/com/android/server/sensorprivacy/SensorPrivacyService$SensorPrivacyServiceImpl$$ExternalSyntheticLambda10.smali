.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:[J

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(IIIILcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 5
    .line 6
    const/4 p5, 0x1

    .line 7
    iput p5, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$1:I

    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$2:I

    .line 10
    .line 11
    iput p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$3:I

    .line 12
    .line 13
    iput-object p6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$4:[J

    .line 14
    .line 15
    iput p3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$5:I

    .line 16
    .line 17
    iput p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$6:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v5, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 2
    .line 3
    iget v7, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$1:I

    .line 4
    .line 5
    iget v8, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$2:I

    .line 6
    .line 7
    iget v9, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$3:I

    .line 8
    .line 9
    iget-object v6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$4:[J

    .line 10
    .line 11
    iget v10, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$5:I

    .line 12
    .line 13
    iget v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;->f$6:I

    .line 14
    .line 15
    iget-object p0, v5, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 16
    .line 17
    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    aput-wide v0, v6, p0

    .line 25
    .line 26
    iget-object v11, v5, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 27
    .line 28
    iget-object v12, v5, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 29
    .line 30
    new-instance v13, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda14;

    .line 31
    .line 32
    move-object v0, v13

    .line 33
    move v1, v8

    .line 34
    move v3, v9

    .line 35
    move v4, v10

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda14;-><init>(IIIILcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[J)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v11, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, v11, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    .line 43
    .line 44
    iget-object v2, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 45
    .line 46
    new-instance v3, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 47
    .line 48
    invoke-direct {v3, v7, v8, v9}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/android/server/sensorprivacy/SensorState;

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    if-ne v10, v2, :cond_0

    .line 62
    .line 63
    invoke-static {v12, v13, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Lcom/android/server/sensorprivacy/SensorState;

    .line 68
    .line 69
    invoke-direct {p0, v10}, Lcom/android/server/sensorprivacy/SensorState;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 73
    .line 74
    new-instance v2, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 75
    .line 76
    invoke-direct {v2, v7, v8, v9}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lcom/android/server/sensorprivacy/SensorState;

    .line 84
    .line 85
    invoke-virtual {v11, v7, v8, v9, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v12, v13, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget v1, v2, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 93
    .line 94
    if-eq v1, v10, :cond_2

    .line 95
    .line 96
    iput v10, v2, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 97
    .line 98
    sget-object p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    iput-wide v4, v2, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 105
    .line 106
    invoke-virtual {v11, v7, v8, v9, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v12, v13, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    invoke-static {v12, v13, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V

    .line 114
    .line 115
    .line 116
    :goto_0
    monitor-exit v0

    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw p0
.end method

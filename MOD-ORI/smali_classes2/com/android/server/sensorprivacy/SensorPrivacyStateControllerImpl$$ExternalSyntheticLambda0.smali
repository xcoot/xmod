.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    check-cast p3, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    check-cast p4, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    check-cast p5, Lcom/android/server/sensorprivacy/SensorState;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 24
    .line 25
    iget-object p4, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 26
    .line 27
    invoke-virtual {p5}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p4, p2, p0, p3, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraPrivacyAllowlist()Z

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    if-eqz p4, :cond_3

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 41
    .line 42
    iget p4, p5, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 43
    .line 44
    iget-object p5, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 45
    .line 46
    iget v0, p5, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 47
    .line 48
    if-ne p2, v0, :cond_0

    .line 49
    .line 50
    iget-object p5, p5, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 51
    .line 52
    invoke-virtual {p5, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCombinedToggleSensorPrivacyEnabled(I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p5, p3, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object p5, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 60
    .line 61
    iget p5, p5, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 62
    .line 63
    if-eq p2, p5, :cond_1

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_1
    iget-object p2, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter p2

    .line 69
    :try_start_0
    iget-object p5, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    .line 70
    .line 71
    invoke-virtual {p5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 72
    .line 73
    .line 74
    move-result p5

    .line 75
    const/4 v0, 0x0

    .line 76
    :goto_0
    if-ge v0, p5, :cond_2

    .line 77
    .line 78
    iget-object v1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Landroid/hardware/ISensorPrivacyListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    :try_start_1
    invoke-interface {v1, p0, p3, p4}, Landroid/hardware/ISensorPrivacyListener;->onSensorPrivacyStateChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :catch_0
    move-exception v2

    .line 93
    :try_start_2
    sget-object v3, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 94
    .line 95
    const-string v3, "SensorPrivacyService"

    .line 96
    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v5, "Caught an exception notifying listener "

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ": "

    .line 111
    .line 112
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .line 121
    .line 122
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    :try_start_3
    iget-object p4, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    .line 126
    .line 127
    invoke-virtual {p4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 128
    .line 129
    .line 130
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 132
    .line 133
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 134
    .line 135
    invoke-static {p1, p3, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$mshowSensorStateChangedActivity(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    goto :goto_3

    .line 141
    :goto_2
    :try_start_4
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :goto_3
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    throw p0

    .line 149
    :cond_3
    :goto_4
    return-void
.end method

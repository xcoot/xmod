.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOrientationEventListener:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;

    .line 14
    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mIsRegisterListener:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mSmgr:Landroid/hardware/SensorManager;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    :try_start_2
    const-string v1, "FaceService"

    .line 32
    .line 33
    const-string/jumbo v2, "unregisterListener : failed to unregister sensor listener"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mSensorThread:Landroid/os/HandlerThread;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mSensorThread:Landroid/os/HandlerThread;

    .line 48
    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mIsRegisterListener:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    :cond_1
    monitor-exit p0

    .line 53
    goto :goto_2

    .line 54
    :goto_1
    monitor-exit p0

    .line 55
    throw v0

    .line 56
    :cond_2
    :goto_2
    const-string/jumbo p0, "service.bioface.authenticating"

    .line 57
    .line 58
    .line 59
    const-string v0, "0"

    .line 60
    .line 61
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_0
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehFace:Lvendor/samsung/hardware/biometrics/face/ISehFace;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 69
    .line 70
    const-string v2, "SemFace"

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    :try_start_3
    check-cast v1, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;

    .line 75
    .line 76
    invoke-virtual {v1}, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :catch_1
    move-exception v1

    .line 81
    const-string/jumbo v3, "semResetConnection Exception :"

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_3
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISehSession:Lvendor/samsung/hardware/biometrics/face/ISehSession;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    :try_start_4
    invoke-interface {v1}, Landroid/hardware/biometrics/face/ISession;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :catch_2
    move-exception v1

    .line 98
    const-string/jumbo v3, "semResetConnection Exception : "

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_4
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mISession:Landroid/hardware/biometrics/face/ISession;

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsResetting:Z

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->stopOperation()V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_1
    const/4 v0, 0x5

    .line 114
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendError(II)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOrientationEventListener:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOrientationEventListener:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 130
    .line 131
    .line 132
    :cond_5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;

    .line 133
    .line 134
    if-eqz p0, :cond_6

    .line 135
    .line 136
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mIsRegisterListener:Z

    .line 137
    .line 138
    if-nez v0, :cond_6

    .line 139
    .line 140
    :try_start_5
    new-instance v0, Landroid/os/HandlerThread;

    .line 141
    .line 142
    const-string/jumbo v1, "sensor thread"

    .line 143
    .line 144
    .line 145
    const/16 v2, 0xa

    .line 146
    .line 147
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mSensorThread:Landroid/os/HandlerThread;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mSensorThread:Landroid/os/HandlerThread;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mSmgr:Landroid/hardware/SensorManager;

    .line 162
    .line 163
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mPrxSensor:Landroid/hardware/Sensor;

    .line 164
    .line 165
    const/4 v3, 0x3

    .line 166
    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :catch_3
    move-exception v0

    .line 171
    const-string v1, "FaceService"

    .line 172
    .line 173
    const-string/jumbo v2, "registerListener : failed to register sensor listener"

    .line 174
    .line 175
    .line 176
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mSensorThread:Landroid/os/HandlerThread;

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 182
    .line 183
    .line 184
    :goto_5
    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$3;->mIsRegisterListener:Z

    .line 186
    .line 187
    :cond_6
    const-string/jumbo p0, "service.bioface.authenticating"

    .line 188
    .line 189
    .line 190
    const-string v0, "1"

    .line 191
    .line 192
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

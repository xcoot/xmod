.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 8

    .line 1
    if-nez p1, :cond_2

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mIsInEmergencyCall:Z

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mIsInEmergencyCall:Z

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mMicUnmutedForEmergencyCall:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 22
    .line 23
    iget v4, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 24
    .line 25
    sget v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->$r8$clinit:I

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    const/4 v7, 0x1

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v5, 0x5

    .line 31
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    .line 32
    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mMicUnmutedForEmergencyCall:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCameraBlockedForEmergencyCall:Z

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 44
    .line 45
    iget-object v2, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 46
    .line 47
    iget v4, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 48
    .line 49
    sget v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->$r8$clinit:I

    .line 50
    .line 51
    const/4 v6, 0x2

    .line 52
    const/4 v7, 0x1

    .line 53
    const/4 v3, 0x1

    .line 54
    const/4 v5, 0x5

    .line 55
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    .line 56
    .line 57
    .line 58
    iput-boolean p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCameraBlockedForEmergencyCall:Z

    .line 59
    .line 60
    :cond_1
    monitor-exit v0

    .line 61
    goto :goto_2

    .line 62
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    sget-object v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 70
    .line 71
    const-string v1, "SensorPrivacyService"

    .line 72
    .line 73
    const-string/jumbo v2, "onCall"

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    :try_start_1
    iget-object v3, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateLock:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 86
    :try_start_2
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 89
    .line 90
    const/4 v4, 0x1

    .line 91
    invoke-virtual {v0, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUseDialog(I)V

    .line 92
    .line 93
    .line 94
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 103
    .line 104
    invoke-virtual {v0, v4, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 111
    .line 112
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 113
    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 119
    .line 120
    iget-object v1, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;

    .line 123
    .line 124
    invoke-direct {v2, p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;I)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mHandler:Landroid/os/Handler;

    .line 134
    .line 135
    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;

    .line 136
    .line 137
    invoke-direct {v1, p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;I)V

    .line 138
    .line 139
    .line 140
    const-wide/16 p0, 0x3e8

    .line 141
    .line 142
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    .line 144
    .line 145
    :cond_4
    :goto_2
    return-void

    .line 146
    :catchall_1
    move-exception p0

    .line 147
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 149
    :catchall_2
    move-exception p0

    .line 150
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    .line 152
    .line 153
    throw p0
.end method

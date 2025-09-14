.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDeathRecipients:Landroid/util/ArrayMap;

.field public final mListenerLock:Ljava/lang/Object;

.field public final mListeners:Landroid/os/RemoteCallbackList;

.field public final mToggleSensorListeners:Landroid/os/RemoteCallbackList;

.field public final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance p1, Landroid/os/RemoteCallbackList;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    .line 19
    .line 20
    new-instance p1, Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    .line 26
    .line 27
    new-instance p1, Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final addDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Landroid/hardware/ISensorPrivacyListener;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/util/Pair;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroid/util/Pair;

    .line 17
    .line 18
    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 21
    .line 22
    invoke-direct {v3, v4, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Landroid/hardware/ISensorPrivacyListener;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v1, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    add-int/2addr p1, v2

    .line 42
    new-instance v2, Landroid/util/Pair;

    .line 43
    .line 44
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;

    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    move-object v1, v2

    .line 56
    :goto_0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    .line 57
    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final handleSensorPrivacyChanged(IIIZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyManagerInternal:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mAllUserListeners:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/util/ArraySet;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    move v4, v3

    .line 24
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-ge v4, v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;

    .line 35
    .line 36
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    new-instance v7, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    invoke-direct {v7, v5, p1, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;IZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :cond_0
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl;->mListeners:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/util/ArrayMap;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Landroid/util/ArraySet;

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    move v2, v3

    .line 81
    :goto_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-ge v2, v4, :cond_1

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;

    .line 92
    .line 93
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    new-instance v6, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;

    .line 98
    .line 99
    invoke-direct {v6, v4, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyManagerInternalImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/SensorPrivacyManagerInternal$OnSensorPrivacyChangedListener;Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 110
    .line 111
    iget v1, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 112
    .line 113
    if-ne p1, v1, :cond_2

    .line 114
    .line 115
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 116
    .line 117
    invoke-virtual {v0, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCombinedToggleSensorPrivacyEnabled(I)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {v0, p3, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    .line 122
    .line 123
    .line 124
    :cond_2
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 125
    .line 126
    iget v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mCurrentUser:I

    .line 127
    .line 128
    if-eq p1, v0, :cond_3

    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    .line 132
    .line 133
    monitor-enter p1

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    :goto_2
    if-ge v3, v0, :cond_4

    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    .line 143
    .line 144
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Landroid/hardware/ISensorPrivacyListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    .line 150
    :try_start_2
    invoke-interface {v1, p2, p3, p4}, Landroid/hardware/ISensorPrivacyListener;->onSensorPrivacyChanged(IIZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :catchall_1
    move-exception p2

    .line 155
    goto :goto_4

    .line 156
    :catch_0
    move-exception v2

    .line 157
    :try_start_3
    sget-object v4, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 158
    .line 159
    const-string v4, "SensorPrivacyService"

    .line 160
    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v6, "Caught an exception notifying listener "

    .line 167
    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, ": "

    .line 175
    .line 176
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v4, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    .line 185
    .line 186
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_4
    :try_start_4
    iget-object p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    .line 190
    .line 191
    invoke-virtual {p4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 192
    .line 193
    .line 194
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 195
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mSensorPrivacyServiceImpl:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 198
    .line 199
    invoke-static {p0, p3, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$mshowSensorStateChangedActivity(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :catchall_2
    move-exception p0

    .line 204
    goto :goto_5

    .line 205
    :goto_4
    :try_start_5
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mToggleSensorListeners:Landroid/os/RemoteCallbackList;

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 208
    .line 209
    .line 210
    throw p2

    .line 211
    :goto_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 212
    throw p0

    .line 213
    :goto_6
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 214
    throw p0
.end method

.method public final removeDeathRecipient(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/hardware/ISensorPrivacyListener;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/util/Pair;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :try_start_0
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    .line 41
    .line 42
    invoke-interface {p1}, Landroid/hardware/ISensorPrivacyListener;->asBinder()Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    return-void

    .line 51
    :cond_1
    new-instance v2, Landroid/util/Pair;

    .line 52
    .line 53
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-void
.end method

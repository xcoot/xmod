.class public final Lcom/android/server/companion/virtual/SensorController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sNextDirectChannelHandle:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mLock:Ljava/lang/Object;

.field public final mRuntimeSensorCallback:Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;

.field public final mSensorDescriptors:Landroid/util/ArrayMap;

.field public final mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

.field public final mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mVirtualDeviceId:I

.field public mVirtualSensorList:Ljava/util/List;

.field public final mVirtualSensors:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/companion/virtual/SensorController;->sNextDirectChannelHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/companion/virtual/IVirtualDevice;ILandroid/content/AttributionSource;Landroid/companion/virtual/sensor/IVirtualSensorCallback;Ljava/util/List;)V
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
    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 27
    .line 28
    iput p2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    .line 29
    .line 30
    iput-object p3, p0, Lcom/android/server/companion/virtual/SensorController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 31
    .line 32
    new-instance p2, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;

    .line 33
    .line 34
    invoke-direct {p2, p0, p4}, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;-><init>(Lcom/android/server/companion/virtual/SensorController;Landroid/companion/virtual/sensor/IVirtualSensorCallback;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController;->mRuntimeSensorCallback:Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;

    .line 38
    .line 39
    const-class p2, Lcom/android/server/sensors/SensorService$LocalService;

    .line 40
    .line 41
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Lcom/android/server/sensors/SensorService$LocalService;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

    .line 48
    .line 49
    const-class p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 50
    .line 51
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 58
    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 63
    .line 64
    .line 65
    move-result-wide p2

    .line 66
    :try_start_0
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result p5

    .line 74
    if-eqz p5, :cond_0

    .line 75
    .line 76
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p5

    .line 80
    check-cast p5, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    .line 81
    .line 82
    invoke-virtual {p0, p1, p5}, Lcom/android/server/companion/virtual/SensorController;->createSensorInternal(Landroid/companion/virtual/IVirtualDevice;Landroid/companion/virtual/sensor/VirtualSensorConfig;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/SensorController$SensorCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :catch_0
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 95
    .line 96
    const-string p4, "Failed to create virtual sensor"

    .line 97
    .line 98
    invoke-direct {p1, p4, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_2
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method


# virtual methods
.method public addSensorForTesting(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 7
    .line 8
    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;-><init>(IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/SensorController;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final createSensorInternal(Landroid/companion/virtual/IVirtualDevice;Landroid/companion/virtual/sensor/VirtualSensorConfig;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_3

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

    .line 13
    .line 14
    iget v4, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    .line 15
    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getVendor()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    :goto_0
    move-object v7, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getVendor()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    goto :goto_0

    .line 39
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getMaximumRange()F

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getResolution()F

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getPower()F

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getMinDelay()I

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getMaxDelay()I

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getFlags()I

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    iget-object v14, v0, Lcom/android/server/companion/virtual/SensorController;->mRuntimeSensorCallback:Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;

    .line 64
    .line 65
    iget-object v2, v1, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 66
    .line 67
    iget-object v15, v2, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v15

    .line 70
    :try_start_0
    iget-object v2, v1, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 71
    .line 72
    iget-wide v2, v2, Lcom/android/server/sensors/SensorService;->mPtr:J

    .line 73
    .line 74
    invoke-static/range {v2 .. v14}, Lcom/android/server/sensors/SensorService;->-$$Nest$smregisterRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iget-object v1, v1, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    if-lez v2, :cond_2

    .line 91
    .line 92
    new-instance v1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 93
    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;-><init>(IILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v3, Landroid/os/Binder;

    .line 106
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v5, "android.hardware.sensor.VirtualSensor:"

    .line 110
    .line 111
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-direct {v3, v4}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v4, Landroid/companion/virtual/sensor/VirtualSensor;

    .line 129
    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    .line 131
    .line 132
    .line 133
    move-result v18

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v19

    .line 138
    move-object/from16 v16, v4

    .line 139
    .line 140
    move/from16 v17, v2

    .line 141
    .line 142
    move-object/from16 v20, p1

    .line 143
    .line 144
    move-object/from16 v21, v3

    .line 145
    .line 146
    invoke-direct/range {v16 .. v21}, Landroid/companion/virtual/sensor/VirtualSensor;-><init>(IILjava/lang/String;Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V

    .line 147
    .line 148
    .line 149
    iget-object v5, v0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    .line 150
    .line 151
    monitor-enter v5

    .line 152
    :try_start_1
    iget-object v6, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    .line 153
    .line 154
    invoke-virtual {v6, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    .line 158
    .line 159
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    invoke-static {}, Landroid/companion/virtualdevice/flags/Flags;->metricsCollection()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_1

    .line 168
    .line 169
    const-string/jumbo v1, "virtual_devices.value_virtual_sensors_created_count"

    .line 170
    .line 171
    .line 172
    iget-object v0, v0, Lcom/android/server/companion/virtual/SensorController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    :cond_1
    return-void

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    throw v0

    .line 185
    :cond_2
    new-instance v0, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v2, "Received an invalid virtual sensor handle \'"

    .line 190
    .line 191
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v2, "\'."

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-direct {v0, v1}, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :catchall_1
    move-exception v0

    .line 215
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 216
    throw v0

    .line 217
    :cond_3
    new-instance v0, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;

    .line 218
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v2, "Received an invalid virtual sensor type (config name \'"

    .line 222
    .line 223
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v2, "\')."

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-direct {v0, v1}, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v0
.end method

.method public getSensorDescriptors()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

    .line 21
    .line 22
    iget v3, p1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    .line 23
    .line 24
    iget v4, p1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mType:I

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/companion/virtual/sensor/VirtualSensorEvent;->getTimestampNanos()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    invoke-virtual {p2}, Landroid/companion/virtual/sensor/VirtualSensorEvent;->getValues()[F

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    iget-object p1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :try_start_1
    iget-object p2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_0

    .line 52
    .line 53
    monitor-exit p1

    .line 54
    const/4 p0, 0x0

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 59
    .line 60
    iget-wide v1, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    .line 61
    .line 62
    invoke-static/range {v1 .. v7}, Lcom/android/server/sensors/SensorService;->-$$Nest$smsendRuntimeSensorEventNative(JIIJ[F)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    return p0

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    :try_start_4
    throw p0

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string p1, "Could not send sensor event for given token"

    .line 76
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    throw p0
.end method

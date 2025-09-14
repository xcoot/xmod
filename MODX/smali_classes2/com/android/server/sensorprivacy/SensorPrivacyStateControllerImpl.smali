.class public final Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

.field public static sInstance$1:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;


# instance fields
.field public final mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

.field public mListener:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;

.field public mListenerHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/android/server/sensorprivacy/AllSensorStateController;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    new-instance v2, Lcom/android/server/sensorprivacy/PersistedState;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/android/server/sensorprivacy/PersistedState;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    .line 32
    .line 33
    monitor-enter v1

    .line 34
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    invoke-direct {v3, v4, v0}, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->schedulePersistLocked()V

    .line 61
    .line 62
    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public static sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final atomic(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method

.method public final dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 22

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v7, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    .line 24
    iget-object v3, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 31
    .line 32
    iget v3, v3, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    .line 33
    .line 34
    iget-object v4, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 41
    .line 42
    iget v4, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    .line 43
    .line 44
    iget-object v5, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 51
    .line 52
    iget v5, v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    .line 53
    .line 54
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    check-cast v9, Landroid/util/SparseArray;

    .line 59
    .line 60
    if-nez v9, :cond_0

    .line 61
    .line 62
    new-instance v9, Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    new-instance v4, Landroid/util/Pair;

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v10, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 77
    .line 78
    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    check-cast v10, Lcom/android/server/sensorprivacy/SensorState;

    .line 83
    .line 84
    invoke-direct {v4, v3, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const-class v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string/jumbo v1, "storage_implementation"

    .line 100
    .line 101
    .line 102
    const-wide v2, 0x10900000004L

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    const/4 v10, 0x0

    .line 115
    :goto_1
    if-ge v10, v9, :cond_3

    .line 116
    .line 117
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    const-string/jumbo v1, "users"

    .line 122
    .line 123
    .line 124
    const-wide v2, 0x20b00000003L

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 130
    .line 131
    .line 132
    move-result-wide v11

    .line 133
    const-string/jumbo v1, "user_id"

    .line 134
    .line 135
    .line 136
    const-wide v13, 0x10500000001L

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v1, v13, v14, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    move-object v15, v0

    .line 149
    check-cast v15, Landroid/util/SparseArray;

    .line 150
    .line 151
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    const/4 v5, 0x0

    .line 156
    :goto_2
    if-ge v5, v4, :cond_2

    .line 157
    .line 158
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Landroid/util/Pair;

    .line 167
    .line 168
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Landroid/util/Pair;

    .line 181
    .line 182
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v2, Lcom/android/server/sensorprivacy/SensorState;

    .line 185
    .line 186
    const-string/jumbo v3, "sensors"

    .line 187
    .line 188
    .line 189
    move/from16 v16, v9

    .line 190
    .line 191
    const-wide v8, 0x20b00000004L

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v3, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 197
    .line 198
    .line 199
    move-result-wide v8

    .line 200
    const-string/jumbo v3, "sensor"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v3, v13, v14, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 204
    .line 205
    .line 206
    const-string/jumbo v0, "toggles"

    .line 207
    .line 208
    .line 209
    const-wide v13, 0x20b00000002L

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    invoke-virtual {v6, v0, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 215
    .line 216
    .line 217
    move-result-wide v13

    .line 218
    const-string/jumbo v0, "toggle_type"

    .line 219
    .line 220
    .line 221
    move/from16 v17, v4

    .line 222
    .line 223
    const-wide v3, 0x10e00000004L

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    invoke-virtual {v6, v0, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 229
    .line 230
    .line 231
    iget v0, v2, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 232
    .line 233
    const-string/jumbo v1, "state_type"

    .line 234
    .line 235
    .line 236
    const-wide v3, 0x10e00000005L

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v1, v3, v4, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 242
    .line 243
    .line 244
    iget-wide v2, v2, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 245
    .line 246
    const-string v1, "last_change"

    .line 247
    .line 248
    const-wide v18, 0x10300000003L

    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    move-object/from16 v0, p1

    .line 254
    .line 255
    move-wide/from16 v20, v2

    .line 256
    .line 257
    move-wide/from16 v2, v18

    .line 258
    .line 259
    move/from16 v18, v5

    .line 260
    .line 261
    move-wide/from16 v4, v20

    .line 262
    .line 263
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 270
    .line 271
    .line 272
    add-int/lit8 v5, v18, 0x1

    .line 273
    .line 274
    move/from16 v9, v16

    .line 275
    .line 276
    move/from16 v4, v17

    .line 277
    .line 278
    const-wide v13, 0x10500000001L

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_2
    move/from16 v16, v9

    .line 285
    .line 286
    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 287
    .line 288
    .line 289
    add-int/lit8 v10, v10, 0x1

    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :cond_3
    return-void
.end method

.method public final forEachStateLocked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_2

    .line 15
    .line 16
    iget-object v4, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 23
    .line 24
    iget-object v5, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/server/sensorprivacy/SensorState;

    .line 31
    .line 32
    iget v6, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    .line 33
    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget v7, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    .line 39
    .line 40
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    iget v4, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v12

    .line 62
    iget v4, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 63
    .line 64
    packed-switch v4, :pswitch_data_0

    .line 65
    .line 66
    .line 67
    iget-object v4, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v4, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;

    .line 70
    .line 71
    iget-object v4, v4, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    .line 74
    .line 75
    .line 76
    move-result v15

    .line 77
    iget-wide v13, v5, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    const/4 v11, 0x5

    .line 83
    const/16 v16, 0x1

    .line 84
    .line 85
    invoke-static/range {v11 .. v16}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->logSensorPrivacyToggle(IIJZZ)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :pswitch_0
    iget-object v4, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 90
    .line 91
    move-object v8, v4

    .line 92
    check-cast v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 93
    .line 94
    const/4 v4, 0x1

    .line 95
    if-eq v6, v4, :cond_0

    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {v8, v4, v12}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->supportsSensorToggle(II)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_1

    .line 106
    .line 107
    invoke-virtual {v5}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_1

    .line 112
    .line 113
    const/4 v11, 0x5

    .line 114
    const/4 v13, 0x0

    .line 115
    const/4 v9, 0x1

    .line 116
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    .line 117
    .line 118
    .line 119
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getState(III)Lcom/android/server/sensorprivacy/SensorState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 9
    .line 10
    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/sensorprivacy/SensorState;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/sensorprivacy/SensorState;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lcom/android/server/sensorprivacy/SensorState;

    .line 28
    .line 29
    const/4 p0, 0x2

    .line 30
    invoke-direct {p1, p0}, Lcom/android/server/sensorprivacy/SensorState;-><init>(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-object p1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public final notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    new-instance v6, Lcom/android/server/sensorprivacy/SensorState;

    .line 27
    .line 28
    invoke-direct {v6, p4}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    .line 29
    .line 30
    .line 31
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->schedulePersistLocked()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final schedulePersistLocked()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v0, :cond_0

    .line 16
    .line 17
    new-instance v3, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 26
    .line 27
    iget v5, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    .line 28
    .line 29
    iget v6, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    .line 30
    .line 31
    iget v4, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    .line 32
    .line 33
    invoke-direct {v3, v5, v6, v4}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Lcom/android/server/sensorprivacy/SensorState;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Lcom/android/server/sensorprivacy/SensorState;

    .line 45
    .line 46
    invoke-direct {v4, v5}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v2, Lcom/android/server/sensorprivacy/PersistedState$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.class public final Lcom/samsung/android/camera/CameraServiceWorker$3;
.super Lcom/samsung/android/camera/ICameraServiceWorker$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final acquireRequestInjector()Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x3e8

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "CameraService_worker"

    .line 19
    .line 20
    const-string v0, "Only system user is allowed to call acquireRequestInjector"

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/lang/SecurityException;

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string p1, "CameraService_worker is up and running"

    .line 2
    .line 3
    const-string p3, "\tCamera is opened: "

    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p3, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 10
    .line 11
    iget-boolean p3, p3, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    .line 12
    .line 13
    invoke-static {p1, p3, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 17
    .line 18
    invoke-static {p1, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "\n\tFold Event"

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p3, "\t\tLast fold state: "

    .line 29
    .line 30
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p3, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 34
    .line 35
    iget-wide v0, p3, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lcom/samsung/android/camera/Logger$ID;->FOLD_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 48
    .line 49
    invoke-static {p1, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/ShakeEventListener;

    .line 55
    .line 56
    const-string p3, "\tLast event: "

    .line 57
    .line 58
    monitor-enter p1

    .line 59
    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/camera/ShakeEventListener;->mLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 62
    :try_start_1
    monitor-enter p1

    .line 63
    monitor-exit p1

    .line 64
    const-string v1, "\n\tShake EventListener: false"

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p3, p1, Lcom/samsung/android/camera/ShakeEventListener;->mLastEventMessage:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    monitor-enter p1

    .line 87
    monitor-exit p1

    .line 88
    sget-object p3, Lcom/samsung/android/camera/Logger$ID;->SHAKE_EVENT_LISTENER:Lcom/samsung/android/camera/Logger$ID;

    .line 89
    .line 90
    invoke-static {p3, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    .line 91
    .line 92
    .line 93
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 94
    monitor-exit p1

    .line 95
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 98
    .line 99
    const-string p3, "\t\tTotal # of ExtraRequest: "

    .line 100
    .line 101
    monitor-enter p1

    .line 102
    :try_start_2
    iget-object v0, p1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mRequestInjectorLock:Ljava/lang/Object;

    .line 103
    .line 104
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :try_start_3
    const-string v1, "\n\tDump of Request Injector Service Activity"

    .line 106
    .line 107
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object p3, p1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    .line 116
    .line 117
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p3, p1, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->mExtraRequestMap:Landroid/util/ArrayMap;

    .line 132
    .line 133
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_0

    .line 146
    .line 147
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Landroid/os/PersistableBundle;

    .line 152
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v3, "\t\tKey = "

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v3, "key.tagName"

    .line 164
    .line 165
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v3, ", i32 = "

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v3, "key.i32"

    .line 178
    .line 179
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    new-instance v4, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$$ExternalSyntheticLambda0;

    .line 188
    .line 189
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    const-string/jumbo v4, "null"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    check-cast v3, Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v3, ", u8 = "

    .line 209
    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v3, "key.u8"

    .line 214
    .line 215
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    new-instance v3, Lcom/samsung/android/camera/requestinjector/RequestInjectorService$$ExternalSyntheticLambda0;

    .line 224
    .line 225
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const-string/jumbo v3, "null"

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    check-cast v1, Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto :goto_0

    .line 252
    :catchall_0
    move-exception p0

    .line 253
    goto :goto_1

    .line 254
    :cond_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    monitor-exit p1

    .line 256
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 257
    .line 258
    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    .line 259
    .line 260
    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->dump(Ljava/io/PrintWriter;)V

    .line 261
    .line 262
    .line 263
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 264
    .line 265
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mScpmReceiver:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 266
    .line 267
    invoke-virtual {p0, p2}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->dump(Ljava/io/PrintWriter;)V

    .line 268
    .line 269
    .line 270
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 271
    .line 272
    invoke-static {p0, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    .line 273
    .line 274
    .line 275
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->POST_PROCESS_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 276
    .line 277
    invoke-static {p0, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    .line 278
    .line 279
    .line 280
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->CAMERA_APPLICATION_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 281
    .line 282
    invoke-static {p0, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    .line 283
    .line 284
    .line 285
    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->DATABASE_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 286
    .line 287
    invoke-static {p0, p2}, Lcom/samsung/android/camera/Logger;->dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 293
    :catchall_1
    move-exception p0

    .line 294
    monitor-exit p1

    .line 295
    throw p0

    .line 296
    :catchall_2
    move-exception p0

    .line 297
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 298
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 299
    :catchall_3
    move-exception p0

    .line 300
    monitor-exit p1

    .line 301
    throw p0
.end method

.method public final getDeviceInjectorOverride(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    sget-object p0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    const/4 v3, 0x1

    .line 7
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    aget-object v4, p0, v2

    .line 10
    .line 11
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/CameraServiceWorker;->DEVICE_INJECTOR_TEST_PACKAGES_FOR_BLOCK:[Ljava/lang/String;

    .line 22
    .line 23
    array-length v0, p0

    .line 24
    move v2, v1

    .line 25
    :goto_1
    if-ge v2, v0, :cond_3

    .line 26
    .line 27
    aget-object v4, p0, v2

    .line 28
    .line 29
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    const-string p0, "CameraService_worker"

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_4

    .line 47
    .line 48
    return v3

    .line 49
    :cond_4
    invoke-static {p2, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->getTaskInfo(ILjava/lang/String;)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-nez p0, :cond_5

    .line 54
    .line 55
    return v1

    .line 56
    :cond_5
    iget p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    .line 57
    .line 58
    if-eqz p0, :cond_6

    .line 59
    .line 60
    move v1, v3

    .line 61
    :cond_6
    return v1
.end method

.method public final getDeviceOrientationForDeviceInjector(Ljava/lang/String;I)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x417

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const-string p0, "CameraService_worker"

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p2, "Calling UID: "

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, " doesn\'t match expected camera service UID!"

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_0
    invoke-static {p2, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->getTaskInfo(ILjava/lang/String;)Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 47
    .line 48
    iget-object p2, p2, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 57
    .line 58
    if-eqz p2, :cond_5

    .line 59
    .line 60
    iget v0, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    if-nez p2, :cond_2

    .line 67
    .line 68
    const-string p0, "CameraService_worker"

    .line 69
    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v0, "Invalid display id: "

    .line 73
    .line 74
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget p1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    .line 78
    .line 79
    invoke-static {p2, p1, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v2

    .line 83
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 84
    .line 85
    iget-object p2, p2, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter p2

    .line 88
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    .line 91
    .line 92
    if-nez p0, :cond_3

    .line 93
    .line 94
    monitor-exit p2

    .line 95
    return v2

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    iget p1, p1, Lcom/samsung/android/camera/CameraServiceWorker$TaskInfo;->displayId:I

    .line 99
    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    monitor-exit p2

    .line 103
    return v2

    .line 104
    :cond_4
    iget p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;->mLatestOrientation:I

    .line 105
    .line 106
    monitor-exit p2

    .line 107
    return p0

    .line 108
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw p0

    .line 110
    :cond_5
    const-string p0, "CameraService_worker"

    .line 111
    .line 112
    const-string p1, "Failed to query display manager!"

    .line 113
    .line 114
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    return v2
.end method

.method public final notifyCameraSessionEvent(ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Non acceptable event type event "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x417

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    const-string p0, "CameraService_worker"

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p2, "Calling UID: "

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, " doesn\'t match expected  camera service UID!"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    sget-boolean v1, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const-string v1, "CameraService_worker"

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "event "

    .line 49
    .line 50
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, ", details : "

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v1

    .line 76
    const/4 v2, 0x0

    .line 77
    packed-switch p1, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    :try_start_0
    const-string p0, "CameraService_worker"

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, ", details : "

    .line 91
    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_1

    .line 108
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 109
    .line 110
    const-string p1, "7508"

    .line 111
    .line 112
    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 117
    .line 118
    const-string p1, "7507"

    .line 119
    .line 120
    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 125
    .line 126
    const-string p1, "7506"

    .line 127
    .line 128
    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 133
    .line 134
    const-string p1, "7505"

    .line 135
    .line 136
    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 141
    .line 142
    const-string p1, "7504"

    .line 143
    .line 144
    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 149
    .line 150
    const-string p1, "7503"

    .line 151
    .line 152
    invoke-virtual {p0, v2, p1, p2}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :goto_0
    monitor-exit v1

    .line 156
    return-void

    .line 157
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    throw p0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/16 v5, 0x417

    .line 14
    .line 15
    if-eq v4, v5, :cond_0

    .line 16
    .line 17
    const-string v0, "CameraService_worker"

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Calling UID: "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " doesn\'t match expected  camera service UID!"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    const/4 v4, 0x2

    .line 47
    const/4 v5, 0x1

    .line 48
    const/16 v6, 0x65

    .line 49
    .line 50
    const/16 v7, 0x64

    .line 51
    .line 52
    const/4 v8, 0x3

    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    if-eq v1, v5, :cond_5

    .line 56
    .line 57
    if-eq v1, v4, :cond_4

    .line 58
    .line 59
    if-eq v1, v8, :cond_3

    .line 60
    .line 61
    if-eq v1, v7, :cond_2

    .line 62
    .line 63
    if-eq v1, v6, :cond_1

    .line 64
    .line 65
    const-string v9, "CAMERA_STATE_UNKNOWN"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string v9, "CAMERA_STATE_OPENING_FAILED"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string v9, "CAMERA_STATE_OPENING"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const-string v9, "CAMERA_STATE_CLOSED"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const-string v9, "CAMERA_STATE_IDLE"

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const-string v9, "CAMERA_STATE_ACTIVE"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    const-string v9, "CAMERA_STATE_OPEN"

    .line 84
    .line 85
    :goto_0
    if-eqz v2, :cond_9

    .line 86
    .line 87
    if-eq v2, v5, :cond_8

    .line 88
    .line 89
    if-eq v2, v4, :cond_7

    .line 90
    .line 91
    const-string v10, "UnknownCamera"

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_7
    const-string v10, "ExternalCamera"

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_8
    const-string v10, "FrontCamera"

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_9
    const-string v10, "BackCamera"

    .line 101
    .line 102
    :goto_1
    sget-boolean v11, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    .line 103
    .line 104
    if-eqz v11, :cond_a

    .line 105
    .line 106
    const-string v12, "CameraService_worker"

    .line 107
    .line 108
    const-string v13, "Camera "

    .line 109
    .line 110
    const-string v14, " facing "

    .line 111
    .line 112
    const-string v15, " state now "

    .line 113
    .line 114
    invoke-static {v13, v0, v14, v10, v15}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    const-string v13, " for client "

    .line 119
    .line 120
    const-string v14, " API Level "

    .line 121
    .line 122
    invoke-static {v10, v9, v13, v3, v14}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    move/from16 v9, p5

    .line 126
    .line 127
    invoke-static {v10, v9, v12}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_a
    move-object/from16 v9, p0

    .line 131
    .line 132
    iget-object v9, v9, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 133
    .line 134
    const-string v10, "Non acceptable state "

    .line 135
    .line 136
    const-string v12, "Open camera("

    .line 137
    .line 138
    const-string v13, "Can\'t save wifi info : "

    .line 139
    .line 140
    const-string v14, "Close camera("

    .line 141
    .line 142
    iget-object v15, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    .line 143
    .line 144
    monitor-enter v15

    .line 145
    if-eqz v1, :cond_11

    .line 146
    .line 147
    if-eq v1, v5, :cond_d

    .line 148
    .line 149
    if-eq v1, v4, :cond_c

    .line 150
    .line 151
    if-eq v1, v8, :cond_b

    .line 152
    .line 153
    if-eq v1, v7, :cond_15

    .line 154
    .line 155
    if-eq v1, v6, :cond_15

    .line 156
    .line 157
    :try_start_0
    const-string v0, "CameraService_worker"

    .line 158
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    goto/16 :goto_8

    .line 175
    .line 176
    :catchall_0
    move-exception v0

    .line 177
    goto/16 :goto_9

    .line 178
    .line 179
    :cond_b
    iget-object v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    .line 180
    .line 181
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 185
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v4, ") for "

    .line 195
    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-static {v1, v2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 210
    .line 211
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    goto/16 :goto_8

    .line 215
    .line 216
    :cond_c
    iget-object v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 217
    .line 218
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    goto/16 :goto_8

    .line 222
    .line 223
    :cond_d
    iget-object v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 224
    .line 225
    new-instance v2, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;

    .line 226
    .line 227
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    new-instance v0, Ljava/io/File;

    .line 234
    .line 235
    const-string v1, "/sys/class/camera/rear/cam_wifi_info"

    .line 236
    .line 237
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_15

    .line 245
    .line 246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 247
    .line 248
    .line 249
    move-result-wide v1

    .line 250
    iget-object v0, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 251
    .line 252
    const-string/jumbo v3, "wifi"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 260
    .line 261
    const-string v3, "00000"

    .line 262
    .line 263
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_f

    .line 268
    .line 269
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    if-eqz v0, :cond_e

    .line 274
    .line 275
    const-string v3, "%4d%1d"

    .line 276
    .line 277
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    filled-new-array {v4, v0}, [Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    goto :goto_2

    .line 302
    :cond_e
    if-eqz v11, :cond_f

    .line 303
    .line 304
    const-string v0, "CameraService_worker"

    .line 305
    .line 306
    const-string/jumbo v4, "wifiInfo is null So, can not save wifi info."

    .line 307
    .line 308
    .line 309
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .line 311
    .line 312
    :cond_f
    :goto_2
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    .line 313
    .line 314
    const-string v0, "/sys/class/camera/rear/cam_wifi_info"

    .line 315
    .line 316
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    .line 318
    .line 319
    :try_start_2
    const-string v0, "UTF-8"

    .line 320
    .line 321
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 330
    .line 331
    .line 332
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    .line 334
    .line 335
    goto :goto_5

    .line 336
    :catch_0
    move-exception v0

    .line 337
    goto :goto_4

    .line 338
    :catchall_1
    move-exception v0

    .line 339
    move-object v3, v0

    .line 340
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 341
    .line 342
    .line 343
    goto :goto_3

    .line 344
    :catchall_2
    move-exception v0

    .line 345
    move-object v4, v0

    .line 346
    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 347
    .line 348
    .line 349
    :goto_3
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 350
    :goto_4
    :try_start_6
    sget-boolean v3, Lcom/samsung/android/camera/CameraServiceWorker;->DEBUG:Z

    .line 351
    .line 352
    if-eqz v3, :cond_10

    .line 353
    .line 354
    const-string v3, "CameraService_worker"

    .line 355
    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    :cond_10
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 372
    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_11
    iget-boolean v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mBootCompleted:Z

    .line 376
    .line 377
    if-eqz v1, :cond_14

    .line 378
    .line 379
    iget-boolean v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mEnableSurveyMode:Z

    .line 380
    .line 381
    if-eqz v1, :cond_14

    .line 382
    .line 383
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker;->SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;

    .line 384
    .line 385
    array-length v4, v1

    .line 386
    const/4 v6, 0x0

    .line 387
    :goto_6
    if-ge v6, v4, :cond_13

    .line 388
    .line 389
    aget-object v7, v1, v6

    .line 390
    .line 391
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    if-eqz v7, :cond_12

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 399
    .line 400
    goto :goto_6

    .line 401
    :cond_13
    const-string v1, "7501"

    .line 402
    .line 403
    int-to-long v6, v2

    .line 404
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-virtual {v9, v2, v1, v3}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    :cond_14
    :goto_7
    iget-object v1, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    .line 412
    .line 413
    new-instance v2, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;

    .line 414
    .line 415
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->CAMERA_EVENT:Lcom/samsung/android/camera/Logger$ID;

    .line 422
    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string v0, ") for "

    .line 432
    .line 433
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-static {v1, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    :cond_15
    :goto_8
    iget-object v0, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    .line 447
    .line 448
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    xor-int/2addr v0, v5

    .line 453
    iput-boolean v0, v9, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    .line 454
    .line 455
    monitor-exit v15

    .line 456
    return-void

    .line 457
    :goto_9
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 458
    throw v0
.end method

.method public final pingForUpdate()V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x417

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    const-string p0, "CameraService_worker"

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Calling UID: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " doesn\'t match expected  camera service UID!"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->updateCameraService()V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/samsung/android/camera/CameraServiceWorker;->mScpmReceiver:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    const-string v3, "CameraService/ScpmReceiver"

    .line 67
    .line 68
    const-string v4, "initialize"

    .line 69
    .line 70
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->values()[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    array-length v4, v3

    .line 78
    const/4 v5, 0x0

    .line 79
    :goto_0
    const/16 v6, 0x1e

    .line 80
    .line 81
    if-ge v5, v4, :cond_1

    .line 82
    .line 83
    aget-object v7, v3, v5

    .line 84
    .line 85
    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->notifyParamChangeRetryLocked(ILcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    .line 93
    iget-object v2, v2, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/requestinjector/RequestInjectorService;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/samsung/android/camera/requestinjector/RequestInjectorService;->sendAllExtraRequestsToRequestInjector()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :catch_0
    move-exception v2

    .line 102
    :try_start_2
    const-string v3, "CameraService_worker"

    .line 103
    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string/jumbo v5, "pingForUpdate exception happen "

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 126
    .line 127
    iget-object v2, v2, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    .line 128
    .line 129
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 131
    .line 132
    invoke-virtual {p0, v6}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    .line 133
    .line 134
    .line 135
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 142
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    .line 145
    .line 146
    throw p0
.end method

.method public final queryPackageName(II)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x417

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const-string v3, "CameraService_worker"

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p1, "Calling UID: "

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " doesn\'t match expected  camera service UID!"

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string v4, "activity"

    .line 49
    .line 50
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Landroid/app/ActivityManager;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-nez p0, :cond_1

    .line 61
    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 84
    .line 85
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 86
    .line 87
    if-ne v5, p1, :cond_2

    .line 88
    .line 89
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 90
    .line 91
    if-ne v5, p2, :cond_2

    .line 92
    .line 93
    iget-object p0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 94
    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    array-length p0, p0

    .line 98
    const/4 p1, 0x1

    .line 99
    if-ne p0, p1, :cond_3

    .line 100
    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string p1, "Package name = "

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object p1, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 112
    .line 113
    const/4 p2, 0x0

    .line 114
    aget-object p1, p1, p2

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    iget-object p0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 127
    .line 128
    aget-object p0, p0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    return-object v2

    .line 138
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    throw p0
.end method

.method public final setDeviceOrientationListener(Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x417

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const-string p0, "CameraService_worker"

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "Calling UID: "

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " doesn\'t match expected camera service UID!"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$3;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOrientationEventListener:Lcom/samsung/android/camera/CameraServiceWorker$WorkerOrientationListener;

    .line 46
    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 60
    .line 61
    .line 62
    :goto_0
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final storeLoggingData(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/Logger$ID;->values()[Lcom/samsung/android/camera/Logger$ID;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p0, p0

    .line 6
    if-le p0, p1, :cond_1

    .line 7
    .line 8
    if-gez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/Logger$ID;->values()[Lcom/samsung/android/camera/Logger$ID;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    aget-object p0, p0, p1

    .line 16
    .line 17
    invoke-static {p0, p2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    :goto_0
    const-string p0, "CameraService_worker"

    .line 22
    .line 23
    const-string/jumbo p1, "storeLoggingData : type has Inacceptable"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method

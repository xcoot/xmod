.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 3
    .line 4
    iget v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;->f$1:I

    .line 5
    .line 6
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;->f$2:I

    .line 7
    .line 8
    move-object/from16 v3, p1

    .line 9
    .line 10
    check-cast v3, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 11
    .line 12
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 13
    .line 14
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const-string v5, "AidlResponseHandler"

    .line 19
    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v7, "onError, client: "

    .line 23
    .line 24
    .line 25
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, ", error: "

    .line 36
    .line 37
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v8, "("

    .line 50
    .line 51
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Landroid/hardware/face/FaceManager;->getErrorName(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v8, ")"

    .line 62
    .line 63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const-string v7, ""

    .line 72
    .line 73
    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v7, ", vendorCode: "

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v7, "("

    .line 89
    .line 90
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Landroid/hardware/face/FaceManager;->getErrorName(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v7, ")"

    .line 101
    .line 102
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    const-string v4, ""

    .line 111
    .line 112
    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    iget-object v6, v4, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 140
    .line 141
    .line 142
    iget-boolean v8, v5, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 143
    .line 144
    if-nez v8, :cond_2

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    iget-object v8, v5, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 148
    .line 149
    monitor-enter v8

    .line 150
    :try_start_0
    iget-object v5, v5, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 151
    .line 152
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 157
    .line 158
    if-eqz v5, :cond_3

    .line 159
    .line 160
    new-instance v7, Landroid/content/Intent;

    .line 161
    .line 162
    const-string/jumbo v9, "com.samsung.android.intent.action.BIOMETRIC_EXTRA_INFO"

    .line 163
    .line 164
    .line 165
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v9, "action_type"

    .line 169
    .line 170
    const/16 v10, 0xe

    .line 171
    .line 172
    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    const-string/jumbo v9, "error"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    .line 180
    .line 181
    const-string/jumbo v9, "vendor"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v6, v7}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendBroadcastFaceInfo(Landroid/content/Context;Landroid/content/Intent;)V

    .line 188
    .line 189
    .line 190
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :goto_2
    const/16 v5, 0x8

    .line 192
    .line 193
    const/4 v6, 0x5

    .line 194
    const/4 v7, 0x3

    .line 195
    if-ne v2, v6, :cond_4

    .line 196
    .line 197
    if-eq v2, v7, :cond_6

    .line 198
    .line 199
    :cond_4
    const-string v6, "SemFace"

    .line 200
    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string/jumbo v9, "error BILG "

    .line 204
    .line 205
    .line 206
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v9, ", "

    .line 213
    .line 214
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    const-string v14, "E"

    .line 236
    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 238
    .line 239
    .line 240
    move-result-wide v11

    .line 241
    iget-wide v7, v4, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mStartOperationTime:J

    .line 242
    .line 243
    sub-long v12, v11, v7

    .line 244
    .line 245
    if-ne v2, v5, :cond_5

    .line 246
    .line 247
    move v11, v0

    .line 248
    goto :goto_3

    .line 249
    :cond_5
    move v11, v2

    .line 250
    :goto_3
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(IIJLjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_6
    iget-object v6, v4, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 254
    .line 255
    const/16 v7, 0x3ee

    .line 256
    .line 257
    if-eqz v6, :cond_9

    .line 258
    .line 259
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    const/4 v9, -0x1

    .line 264
    if-ne v2, v5, :cond_7

    .line 265
    .line 266
    if-ne v0, v7, :cond_7

    .line 267
    .line 268
    new-instance v10, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 269
    .line 270
    const-string v11, "FAMK"

    .line 271
    .line 272
    const/4 v12, 0x3

    .line 273
    invoke-direct {v10, v9, v12, v11, v8}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v6, v10}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_7
    const/4 v10, 0x7

    .line 281
    if-eq v2, v10, :cond_8

    .line 282
    .line 283
    const/16 v10, 0x9

    .line 284
    .line 285
    if-ne v2, v10, :cond_9

    .line 286
    .line 287
    :cond_8
    new-instance v10, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 288
    .line 289
    const-string v11, "FAIB"

    .line 290
    .line 291
    const/4 v12, 0x3

    .line 292
    invoke-direct {v10, v9, v12, v11, v8}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v6, v10}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 296
    .line 297
    .line 298
    :cond_9
    :goto_4
    if-ne v2, v5, :cond_a

    .line 299
    .line 300
    if-ne v0, v7, :cond_a

    .line 301
    .line 302
    iget v6, v4, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    .line 303
    .line 304
    const/4 v7, 0x2

    .line 305
    if-ne v6, v7, :cond_a

    .line 306
    .line 307
    const v6, 0x186a1

    .line 308
    .line 309
    .line 310
    invoke-virtual {v4, v6}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendAcquired(I)V

    .line 311
    .line 312
    .line 313
    :cond_a
    invoke-interface {v3, v2, v0}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 314
    .line 315
    .line 316
    const/4 v3, 0x1

    .line 317
    if-ne v2, v3, :cond_b

    .line 318
    .line 319
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 320
    .line 321
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;->onHardwareUnavailable()V

    .line 322
    .line 323
    .line 324
    :cond_b
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    const/16 v3, 0x10

    .line 332
    .line 333
    if-eq v2, v3, :cond_c

    .line 334
    .line 335
    if-ne v2, v5, :cond_d

    .line 336
    .line 337
    const/16 v2, 0x3e9

    .line 338
    .line 339
    if-ne v0, v2, :cond_d

    .line 340
    .line 341
    :cond_c
    const-string v0, "SemFace"

    .line 342
    .line 343
    const-string/jumbo v2, "onError : TEMPLATE_CORRUPTED"

    .line 344
    .line 345
    .line 346
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonEnumerateUserInternal()V

    .line 350
    .line 351
    .line 352
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->stopOperation()V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :catchall_0
    move-exception v0

    .line 357
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    throw v0
.end method

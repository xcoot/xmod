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

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;->f$2:I

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

    .line 4
    iget v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;->f$1:I

    .line 6
    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda21;->f$2:I

    .line 8
    move-object/from16 v3, p1

    .line 10
    check-cast v3, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 12
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 14
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 17
    move-result-object v4

    .line 18
    const-string v5, "AidlResponseHandler"

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo v7, "onError, client: "

    .line 25
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v4, ", error: "

    .line 37
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    sget-boolean v4, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 45
    if-eqz v4, :cond_0

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    .line 49
    const-string v8, "("

    .line 51
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {v2}, Landroid/hardware/face/FaceManager;->getErrorName(I)Ljava/lang/String;

    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v8, ")"

    .line 63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v7

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const-string v7, ""

    .line 73
    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v7, ", vendorCode: "

    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    if-eqz v4, :cond_1

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    const-string v7, "("

    .line 90
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {v0}, Landroid/hardware/face/FaceManager;->getErrorName(I)Ljava/lang/String;

    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v7, ")"

    .line 102
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    const-string v4, ""

    .line 112
    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v4

    .line 119
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 132
    move-result-object v5

    .line 133
    iget-object v6, v4, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    .line 138
    move-result v7

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 142
    iget-boolean v8, v5, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 144
    if-nez v8, :cond_2

    .line 146
    goto :goto_2

    .line 147
    :cond_2
    iget-object v8, v5, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 149
    monitor-enter v8

    .line 150
    :try_start_0
    iget-object v5, v5, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 152
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 158
    if-eqz v5, :cond_3

    .line 160
    new-instance v7, Landroid/content/Intent;

    .line 162
    const-string/jumbo v9, "com.samsung.android.intent.action.BIOMETRIC_EXTRA_INFO"

    .line 165
    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    const-string v9, "action_type"

    .line 170
    const/16 v10, 0xe

    .line 172
    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string/jumbo v9, "error"

    .line 178
    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string/jumbo v9, "vendor"

    .line 184
    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-virtual {v5, v6, v7}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendBroadcastFaceInfo(Landroid/content/Context;Landroid/content/Intent;)V

    .line 190
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :goto_2
    const/16 v5, 0x8

    .line 193
    const/4 v6, 0x5

    .line 194
    const/4 v7, 0x3

    .line 195
    if-ne v2, v6, :cond_4

    .line 197
    if-eq v2, v7, :cond_6

    .line 199
    :cond_4
    const-string v6, "SemFace"

    .line 201
    new-instance v8, Ljava/lang/StringBuilder;

    .line 203
    const-string/jumbo v9, "error BILG "

    .line 206
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    const-string v9, ", "

    .line 214
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v8

    .line 224
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 230
    move-result-object v9

    .line 231
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    .line 234
    move-result v10

    .line 235
    const-string v14, "E"

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 240
    move-result-wide v11

    .line 241
    iget-wide v7, v4, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mStartOperationTime:J

    .line 243
    sub-long v12, v11, v7

    .line 245
    if-ne v2, v5, :cond_5

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

    .line 253
    :cond_6
    iget-object v6, v4, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 255
    const/16 v7, 0x3ee

    .line 257
    if-eqz v6, :cond_9

    .line 259
    invoke-virtual {v4}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    .line 262
    move-result-object v8

    .line 263
    const/4 v9, -0x1

    .line 264
    if-ne v2, v5, :cond_7

    .line 266
    if-ne v0, v7, :cond_7

    .line 268
    new-instance v10, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 270
    const-string v11, "FAMK"

    .line 272
    const/4 v12, 0x3

    .line 273
    invoke-direct {v10, v9, v12, v11, v8}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v6, v10}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 279
    goto :goto_4

    .line 280
    :cond_7
    const/4 v10, 0x7

    .line 281
    if-eq v2, v10, :cond_8

    .line 283
    const/16 v10, 0x9

    .line 285
    if-ne v2, v10, :cond_9

    .line 287
    :cond_8
    new-instance v10, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 289
    const-string v11, "FAIB"

    .line 291
    const/4 v12, 0x3

    .line 292
    invoke-direct {v10, v9, v12, v11, v8}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v6, v10}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 298
    :cond_9
    :goto_4
    if-ne v2, v5, :cond_a

    .line 300
    if-ne v0, v7, :cond_a

    .line 302
    iget v6, v4, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mOperationType:I

    .line 304
    const/4 v7, 0x2

    .line 305
    if-ne v6, v7, :cond_a

    .line 307
    const v6, 0x186a1

    .line 310
    invoke-virtual {v4, v6}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->sendAcquired(I)V

    .line 313
    :cond_a
    invoke-interface {v3, v2, v0}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 316
    const/4 v3, 0x1

    .line 317
    if-ne v2, v3, :cond_b

    .line 319
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 321
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;->onHardwareUnavailable()V

    .line 324
    :cond_b
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    const/16 v3, 0x10

    .line 333
    if-eq v2, v3, :cond_c

    .line 335
    if-ne v2, v5, :cond_d

    .line 337
    const/16 v2, 0x3e9

    .line 339
    if-ne v0, v2, :cond_d

    .line 341
    :cond_c
    const-string v0, "SemFace"

    .line 343
    const-string/jumbo v2, "onError : TEMPLATE_CORRUPTED"

    .line 346
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonEnumerateUserInternal()V

    .line 352
    :cond_d
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->stopOperation()V

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

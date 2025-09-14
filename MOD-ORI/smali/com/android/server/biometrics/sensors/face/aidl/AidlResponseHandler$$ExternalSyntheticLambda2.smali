.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/hardware/face/Face;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;IILandroid/hardware/face/Face;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->f$3:Landroid/hardware/face/Face;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->f$3:Landroid/hardware/face/Face;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-boolean v4, v3, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsEnrollPausing:Z

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    const-string v6, "SemFace"

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    const/16 v4, 0x1e

    .line 26
    .line 27
    if-ne v2, v4, :cond_0

    .line 28
    .line 29
    const-string/jumbo v4, "pauseEnrollExt"

    .line 30
    .line 31
    .line 32
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->releaseDVFS()V

    .line 41
    .line 42
    .line 43
    :cond_0
    if-nez v2, :cond_a

    .line 44
    .line 45
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    new-instance v8, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 54
    .line 55
    const-string v9, "FAEN"

    .line 56
    .line 57
    const/4 v10, -0x1

    .line 58
    const/4 v11, 0x3

    .line 59
    invoke-direct {v8, v10, v11, v9, v7}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v8}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v4, v3, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    iget v7, v3, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mUserId:I

    .line 68
    .line 69
    new-instance v8, Ljava/util/Properties;

    .line 70
    .line 71
    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string/jumbo v9, "face_enrolled_position_"

    .line 75
    .line 76
    .line 77
    const-string v10, ".xml"

    .line 78
    .line 79
    invoke-static {v7, v9, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    new-instance v9, Ljava/io/File;

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    invoke-static {v10}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    invoke-direct {v9, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    const/4 v11, 0x0

    .line 98
    if-eqz v7, :cond_3

    .line 99
    .line 100
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    .line 101
    .line 102
    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    .line 104
    .line 105
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :catch_0
    move-exception v7

    .line 113
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    move-object v11, v7

    .line 123
    goto :goto_1

    .line 124
    :catch_1
    move-exception v12

    .line 125
    goto :goto_0

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    goto :goto_1

    .line 128
    :catch_2
    move-exception v12

    .line 129
    move-object v7, v11

    .line 130
    :goto_0
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    invoke-static {v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    .line 136
    .line 137
    if-eqz v7, :cond_3

    .line 138
    .line 139
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :goto_1
    if-eqz v11, :cond_2

    .line 144
    .line 145
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catch_3
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    :cond_2
    :goto_2
    throw p0

    .line 158
    :cond_3
    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    sget-boolean v7, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

    .line 163
    .line 164
    if-nez v7, :cond_5

    .line 165
    .line 166
    sget-boolean v7, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

    .line 167
    .line 168
    if-eqz v7, :cond_4

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_4
    move v5, v10

    .line 172
    goto :goto_5

    .line 173
    :cond_5
    :goto_4
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->isFolderOpened(Landroid/content/Context;)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_7

    .line 178
    .line 179
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->isFlipOpened(Landroid/content/Context;)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_6

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_6
    const/4 v5, 0x2

    .line 187
    :cond_7
    :goto_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v8, v1, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    .line 195
    .line 196
    invoke-direct {v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 197
    .line 198
    .line 199
    :try_start_7
    invoke-virtual {v8, v1, v11}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 200
    .line 201
    .line 202
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 203
    .line 204
    .line 205
    goto :goto_7

    .line 206
    :catch_4
    move-exception v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    goto :goto_7

    .line 215
    :catchall_2
    move-exception p0

    .line 216
    move-object v11, v1

    .line 217
    goto :goto_8

    .line 218
    :catch_5
    move-exception v4

    .line 219
    move-object v11, v1

    .line 220
    goto :goto_6

    .line 221
    :catchall_3
    move-exception p0

    .line 222
    goto :goto_8

    .line 223
    :catch_6
    move-exception v4

    .line 224
    :goto_6
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 229
    .line 230
    .line 231
    if-eqz v11, :cond_8

    .line 232
    .line 233
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 234
    .line 235
    .line 236
    :cond_8
    :goto_7
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getCurrentClientHashID()I

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 245
    .line 246
    .line 247
    move-result-wide v4

    .line 248
    iget-wide v9, v3, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mStartOperationTime:J

    .line 249
    .line 250
    sub-long v10, v4, v9

    .line 251
    .line 252
    const/4 v9, 0x0

    .line 253
    const-string v12, "S"

    .line 254
    .line 255
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(IIJLjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->stopOperation()V

    .line 259
    .line 260
    .line 261
    goto :goto_a

    .line 262
    :goto_8
    if-eqz v11, :cond_9

    .line 263
    .line 264
    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 265
    .line 266
    .line 267
    goto :goto_9

    .line 268
    :catch_7
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    :cond_9
    :goto_9
    throw p0

    .line 277
    :cond_a
    :goto_a
    invoke-virtual {p1, p0, v2}, Lcom/android/server/biometrics/sensors/EnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 278
    .line 279
    .line 280
    if-nez v2, :cond_b

    .line 281
    .line 282
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAidlResponseHandlerCallback:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;

    .line 283
    .line 284
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$AidlResponseHandlerCallback;->onEnrollSuccess()V

    .line 285
    .line 286
    .line 287
    :cond_b
    return-void
.end method

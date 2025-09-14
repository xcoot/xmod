.class Lcom/android/server/display/HighBrightnessModeController$HdrListener;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mIsBrightnessScaledUp:Z

.field public mIsBrightnessScaledUpPrev:Z

.field public mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUpPrev:Z

    .line 10
    .line 11
    const-string/jumbo p1, "display"

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 26
    .line 27
    new-instance p1, Landroid/os/Binder;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mToken:Landroid/os/IBinder;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final onHdrInfoChanged(Landroid/os/IBinder;IIIIF)V
    .locals 19

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    move/from16 v9, p4

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    .line 11
    .line 12
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 13
    .line 14
    iget-boolean v2, v1, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    .line 15
    .line 16
    const-string v10, ", DisplaySize: "

    .line 17
    .line 18
    const-string v11, ", HdrLayerSize: "

    .line 19
    .line 20
    const-string v12, ", SDR Dimming: "

    .line 21
    .line 22
    const-string/jumbo v13, "x"

    .line 23
    .line 24
    .line 25
    const-string v14, "HighBrightnessModeController"

    .line 26
    .line 27
    if-eqz v2, :cond_9

    .line 28
    .line 29
    if-lez v7, :cond_9

    .line 30
    .line 31
    iget v2, v1, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 32
    .line 33
    iget v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 34
    .line 35
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v2, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 40
    .line 41
    iget v4, v2, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 42
    .line 43
    iget v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 44
    .line 45
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const-string/jumbo v15, "brt scaled up: "

    .line 58
    .line 59
    .line 60
    if-lez v2, :cond_8

    .line 61
    .line 62
    if-lez v5, :cond_8

    .line 63
    .line 64
    mul-int v0, v8, v9

    .line 65
    .line 66
    iget-object v3, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 67
    .line 68
    iget v7, v3, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 69
    .line 70
    iget v3, v3, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 71
    .line 72
    mul-int/2addr v7, v3

    .line 73
    int-to-float v3, v1

    .line 74
    move/from16 v16, v1

    .line 75
    .line 76
    int-to-float v1, v2

    .line 77
    div-float v17, v3, v1

    .line 78
    .line 79
    int-to-float v4, v4

    .line 80
    int-to-float v5, v5

    .line 81
    div-float/2addr v4, v5

    .line 82
    cmpl-float v5, v17, v4

    .line 83
    .line 84
    if-lez v5, :cond_0

    .line 85
    .line 86
    mul-float/2addr v1, v4

    .line 87
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    div-float/2addr v3, v4

    .line 93
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_0
    if-lez v5, :cond_1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    move/from16 v2, v16

    .line 101
    .line 102
    :goto_1
    mul-int v3, v2, v1

    .line 103
    .line 104
    int-to-float v4, v0

    .line 105
    int-to-float v5, v7

    .line 106
    div-float v5, v4, v5

    .line 107
    .line 108
    move-object/from16 v16, v10

    .line 109
    .line 110
    int-to-float v10, v3

    .line 111
    div-float/2addr v4, v10

    .line 112
    iget-object v10, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 113
    .line 114
    move-object/from16 v17, v14

    .line 115
    .line 116
    iget v14, v10, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    .line 117
    .line 118
    if-gtz v14, :cond_4

    .line 119
    .line 120
    iget-boolean v14, v10, Lcom/android/server/display/HighBrightnessModeController;->mSupportPhotoHdr:Z

    .line 121
    .line 122
    move/from16 v18, v1

    .line 123
    .line 124
    const/4 v1, 0x1

    .line 125
    if-ne v14, v1, :cond_2

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_2
    iget v1, v10, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    .line 129
    .line 130
    cmpl-float v1, v4, v1

    .line 131
    .line 132
    if-ltz v1, :cond_3

    .line 133
    .line 134
    :goto_2
    const/4 v1, 0x1

    .line 135
    goto :goto_4

    .line 136
    :cond_3
    const/4 v1, 0x0

    .line 137
    goto :goto_4

    .line 138
    :cond_4
    move/from16 v18, v1

    .line 139
    .line 140
    :goto_3
    iget v1, v10, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    .line 141
    .line 142
    cmpl-float v1, v5, v1

    .line 143
    .line 144
    if-ltz v1, :cond_3

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :goto_4
    iput-boolean v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    .line 148
    .line 149
    iget v10, v10, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    .line 150
    .line 151
    if-gtz v10, :cond_6

    .line 152
    .line 153
    iget-boolean v10, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUpPrev:Z

    .line 154
    .line 155
    if-eq v1, v10, :cond_5

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_5
    move-object/from16 v7, v17

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_6
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-boolean v10, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    .line 167
    .line 168
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object v10, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 175
    .line 176
    iget v10, v10, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    .line 177
    .line 178
    invoke-static {v10, v8, v11, v13, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 179
    .line 180
    .line 181
    const-string v10, "("

    .line 182
    .line 183
    const-string v14, "), DisplaySize: "

    .line 184
    .line 185
    invoke-static {v9, v0, v10, v14, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 189
    .line 190
    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-object v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 199
    .line 200
    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 201
    .line 202
    const-string v14, "), deviceRatio: "

    .line 203
    .line 204
    invoke-static {v0, v7, v10, v14, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v0, " maxAvailSize: "

    .line 211
    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v0, "), availRatio: "

    .line 222
    .line 223
    move/from16 v2, v18

    .line 224
    .line 225
    invoke-static {v2, v3, v10, v0, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 235
    .line 236
    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    .line 237
    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v0, ")"

    .line 242
    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    move-object/from16 v7, v17

    .line 251
    .line 252
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    :cond_7
    :goto_6
    move-object/from16 v10, v16

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_8
    move-object/from16 v16, v10

    .line 259
    .line 260
    move-object v7, v14

    .line 261
    iget-object v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 262
    .line 263
    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    .line 264
    .line 265
    const/4 v1, 0x1

    .line 266
    if-le v0, v1, :cond_7

    .line 267
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-boolean v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 282
    .line 283
    iget v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    .line 284
    .line 285
    invoke-static {v1, v8, v11, v13, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    move-object/from16 v10, v16

    .line 292
    .line 293
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 297
    .line 298
    iget v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 307
    .line 308
    iget v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 309
    .line 310
    invoke-static {v0, v1, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :goto_7
    iget-object v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 314
    .line 315
    iget-boolean v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    .line 316
    .line 317
    if-eqz v0, :cond_a

    .line 318
    .line 319
    iget-boolean v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    .line 320
    .line 321
    if-eqz v0, :cond_a

    .line 322
    .line 323
    iget-object v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 324
    .line 325
    if-nez v0, :cond_a

    .line 326
    .line 327
    :try_start_0
    iget-object v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 328
    .line 329
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mToken:Landroid/os/IBinder;

    .line 330
    .line 331
    const/16 v2, 0x78

    .line 332
    .line 333
    invoke-interface {v0, v1, v2, v7}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    iput-object v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 338
    .line 339
    const-string v0, "Request Vrr to 120Hz @HDR"

    .line 340
    .line 341
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .line 343
    .line 344
    goto :goto_8

    .line 345
    :catch_0
    const-string v0, "Error : RemoteException occured at acquireRefreshRateMinLimitToken"

    .line 346
    .line 347
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_9
    move-object v7, v14

    .line 352
    :cond_a
    :goto_8
    iget-boolean v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    .line 353
    .line 354
    iput-boolean v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUpPrev:Z

    .line 355
    .line 356
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 357
    .line 358
    iget-boolean v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    .line 359
    .line 360
    if-eqz v1, :cond_b

    .line 361
    .line 362
    if-nez v0, :cond_b

    .line 363
    .line 364
    :try_start_1
    iget-object v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 365
    .line 366
    if-eqz v0, :cond_b

    .line 367
    .line 368
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    .line 369
    .line 370
    .line 371
    const/4 v0, 0x0

    .line 372
    iput-object v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 373
    .line 374
    const-string v0, "Release Vrr @HDR"

    .line 375
    .line 376
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    .line 378
    .line 379
    goto :goto_9

    .line 380
    :catch_1
    const-string v0, "Error : RemoteException occured at releaseRefreshRateMinLimitToken"

    .line 381
    .line 382
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    :cond_b
    :goto_9
    iget-object v0, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 386
    .line 387
    iget v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    .line 388
    .line 389
    const-string/jumbo v14, "mSupportPhotoHdr: "

    .line 390
    .line 391
    .line 392
    if-gtz v1, :cond_d

    .line 393
    .line 394
    iget-boolean v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mSupportPhotoHdr:Z

    .line 395
    .line 396
    const/4 v2, 0x1

    .line 397
    if-ne v1, v2, :cond_c

    .line 398
    .line 399
    goto :goto_a

    .line 400
    :cond_c
    iget-object v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    .line 401
    .line 402
    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    .line 403
    .line 404
    const/4 v2, 0x1

    .line 405
    invoke-direct {v1, v2, v6}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    .line 410
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 417
    .line 418
    iget-boolean v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mSupportPhotoHdr:Z

    .line 419
    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 427
    .line 428
    iget v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    .line 429
    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v1, " mIsHdrLayerPresent: "

    .line 434
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 439
    .line 440
    iget-boolean v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 441
    .line 442
    invoke-static {v7, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 443
    .line 444
    .line 445
    goto :goto_b

    .line 446
    :cond_d
    :goto_a
    iget-object v15, v0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    .line 447
    .line 448
    new-instance v5, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;

    .line 449
    .line 450
    move-object v0, v5

    .line 451
    move-object/from16 v1, p0

    .line 452
    .line 453
    move/from16 v2, p2

    .line 454
    .line 455
    move/from16 v3, p3

    .line 456
    .line 457
    move/from16 v4, p4

    .line 458
    .line 459
    move-object/from16 v17, v7

    .line 460
    .line 461
    move-object v7, v5

    .line 462
    move/from16 v5, p6

    .line 463
    .line 464
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController$HdrListener;IIIF)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v15, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 468
    .line 469
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 476
    .line 477
    iget-boolean v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mSupportPhotoHdr:Z

    .line 478
    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 486
    .line 487
    iget v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    .line 488
    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string v1, ", mIsHdrLayerPresent: "

    .line 493
    .line 494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 498
    .line 499
    iget-boolean v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 500
    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    const-string v1, ", numberOfHdrLayers: "

    .line 505
    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    move/from16 v1, p2

    .line 510
    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-static {v8, v9, v13, v10, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 518
    .line 519
    .line 520
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 521
    .line 522
    iget v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 523
    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 531
    .line 532
    iget v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 533
    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    const-string v1, " mThresRatio: "

    .line 538
    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    iget-object v1, v6, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 543
    .line 544
    iget v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    .line 545
    .line 546
    move-object/from16 v2, v17

    .line 547
    .line 548
    invoke-static {v0, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 549
    .line 550
    .line 551
    :goto_b
    return-void
.end method

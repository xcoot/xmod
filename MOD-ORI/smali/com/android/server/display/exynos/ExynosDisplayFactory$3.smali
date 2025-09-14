.class public final Lcom/android/server/display/exynos/ExynosDisplayFactory$3;
.super Landroid/os/CountDownTimer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayFactory;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "CountDownTimer finished = "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 15
    .line 16
    iget v1, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 17
    .line 18
    const-string v2, "ExynosDisplayFactory"

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 27
    .line 28
    return-void
.end method

.method public final onTick(J)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string/jumbo v2, "cgc17_enc"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v3, "de"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v4, "cgc17_con"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v5, "scl"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v6, "hsc"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v7, "gamma_matrix"

    .line 19
    .line 20
    .line 21
    const-string v8, "aps"

    .line 22
    .line 23
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 24
    .line 25
    iget v9, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 26
    .line 27
    const/4 v10, 0x1

    .line 28
    const-string v11, "0"

    .line 29
    .line 30
    const-string/jumbo v12, "xml array size wrong: "

    .line 31
    .line 32
    .line 33
    const-string v13, "ExynosDisplayFactory"

    .line 34
    .line 35
    const/4 v14, 0x2

    .line 36
    const/4 v15, 0x0

    .line 37
    if-gtz v9, :cond_5

    .line 38
    .line 39
    move v2, v15

    .line 40
    :goto_0
    if-ge v2, v14, :cond_43

    .line 41
    .line 42
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 43
    .line 44
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 45
    .line 46
    aget-object v3, v3, v2

    .line 47
    .line 48
    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 49
    .line 50
    aget v3, v3, v4

    .line 51
    .line 52
    if-nez v3, :cond_0

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_0
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 56
    .line 57
    aget v3, v3, v2

    .line 58
    .line 59
    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 67
    .line 68
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 71
    .line 72
    aget-object v4, v4, v2

    .line 73
    .line 74
    const-string/jumbo v5, "setCalibrationAPS"

    .line 75
    .line 76
    .line 77
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :try_start_0
    invoke-static {v15, v15, v3, v4, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    const-string/jumbo v0, "xml aps not found"

    .line 87
    .line 88
    .line 89
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    array-length v4, v3

    .line 96
    if-ge v4, v10, :cond_3

    .line 97
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    array-length v3, v3

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    aget-object v3, v3, v15

    .line 116
    .line 117
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 118
    .line 119
    invoke-virtual {v4, v8}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    if-eqz v4, :cond_4

    .line 128
    .line 129
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_4

    .line 134
    .line 135
    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 136
    .line 137
    invoke-virtual {v0, v8}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-static {v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    .line 150
    .line 151
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    const/16 v8, 0xa

    .line 155
    .line 156
    if-gt v9, v10, :cond_a

    .line 157
    .line 158
    move v2, v15

    .line 159
    :goto_3
    if-ge v2, v14, :cond_43

    .line 160
    .line 161
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 162
    .line 163
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 164
    .line 165
    aget-object v3, v3, v2

    .line 166
    .line 167
    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 168
    .line 169
    aget v3, v3, v4

    .line 170
    .line 171
    if-nez v3, :cond_6

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_6
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 175
    .line 176
    aget v3, v3, v2

    .line 177
    .line 178
    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_7

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_7
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 186
    .line 187
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 190
    .line 191
    aget-object v4, v4, v2

    .line 192
    .line 193
    const-string/jumbo v5, "degamma"

    .line 194
    .line 195
    .line 196
    const-string/jumbo v6, "setCalibrationDEGAMMA"

    .line 197
    .line 198
    .line 199
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :try_start_1
    invoke-static {v15, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    iget-object v7, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    .line 207
    .line 208
    if-eqz v6, :cond_8

    .line 209
    .line 210
    :try_start_2
    array-length v9, v6

    .line 211
    if-lt v9, v10, :cond_8

    .line 212
    .line 213
    aget-object v3, v6, v15

    .line 214
    .line 215
    invoke-virtual {v0, v3, v7}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :catch_1
    move-exception v0

    .line 220
    goto :goto_4

    .line 221
    :cond_8
    invoke-static {v8, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    if-eqz v6, :cond_9

    .line 226
    .line 227
    array-length v9, v6

    .line 228
    if-lt v9, v10, :cond_9

    .line 229
    .line 230
    aget-object v6, v6, v15

    .line 231
    .line 232
    invoke-virtual {v0, v6, v7}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const/16 v6, 0x8

    .line 236
    .line 237
    invoke-static {v6, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    if-eqz v3, :cond_9

    .line 242
    .line 243
    array-length v4, v3

    .line 244
    if-lt v4, v10, :cond_9

    .line 245
    .line 246
    aget-object v3, v3, v15

    .line 247
    .line 248
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_ON:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v0, v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteDEGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 251
    .line 252
    .line 253
    goto :goto_5

    .line 254
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    .line 256
    .line 257
    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_a
    if-gt v9, v14, :cond_10

    .line 261
    .line 262
    move v2, v15

    .line 263
    :goto_6
    if-ge v2, v14, :cond_43

    .line 264
    .line 265
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 266
    .line 267
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 268
    .line 269
    aget-object v3, v3, v2

    .line 270
    .line 271
    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 272
    .line 273
    aget v3, v3, v4

    .line 274
    .line 275
    if-nez v3, :cond_c

    .line 276
    .line 277
    :cond_b
    :goto_7
    const/16 v6, 0x8

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_c
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 281
    .line 282
    aget v3, v3, v2

    .line 283
    .line 284
    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_d

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_d
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 292
    .line 293
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 294
    .line 295
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 296
    .line 297
    aget-object v4, v4, v2

    .line 298
    .line 299
    const-string/jumbo v5, "gamma"

    .line 300
    .line 301
    .line 302
    const-string/jumbo v6, "setCalibrationGAMMA"

    .line 303
    .line 304
    .line 305
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    :try_start_3
    invoke-static {v15, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 312
    iget-object v7, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_OFF:Ljava/lang/String;

    .line 313
    .line 314
    if-eqz v6, :cond_e

    .line 315
    .line 316
    :try_start_4
    array-length v9, v6

    .line 317
    if-lt v9, v10, :cond_e

    .line 318
    .line 319
    aget-object v3, v6, v15

    .line 320
    .line 321
    invoke-virtual {v0, v3, v7}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    goto :goto_7

    .line 325
    :catch_2
    move-exception v0

    .line 326
    const/16 v6, 0x8

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_e
    invoke-static {v8, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    if-eqz v6, :cond_b

    .line 334
    .line 335
    array-length v9, v6

    .line 336
    if-lt v9, v10, :cond_b

    .line 337
    .line 338
    aget-object v6, v6, v15

    .line 339
    .line 340
    invoke-virtual {v0, v6, v7}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 341
    .line 342
    .line 343
    const/16 v6, 0x8

    .line 344
    .line 345
    :try_start_5
    invoke-static {v6, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    if-eqz v3, :cond_f

    .line 350
    .line 351
    array-length v4, v3

    .line 352
    if-lt v4, v10, :cond_f

    .line 353
    .line 354
    aget-object v3, v3, v15

    .line 355
    .line 356
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->EXTENSION_ON:Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {v0, v3, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteGAMMA(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 359
    .line 360
    .line 361
    goto :goto_9

    .line 362
    :catch_3
    move-exception v0

    .line 363
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    .line 365
    .line 366
    :cond_f
    :goto_9
    add-int/lit8 v2, v2, 0x1

    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_10
    const/4 v8, 0x3

    .line 370
    if-gt v9, v8, :cond_16

    .line 371
    .line 372
    move v2, v15

    .line 373
    :goto_a
    if-ge v2, v14, :cond_43

    .line 374
    .line 375
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 376
    .line 377
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 378
    .line 379
    aget-object v3, v3, v2

    .line 380
    .line 381
    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 382
    .line 383
    aget v3, v3, v4

    .line 384
    .line 385
    if-nez v3, :cond_11

    .line 386
    .line 387
    goto :goto_c

    .line 388
    :cond_11
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 389
    .line 390
    aget v3, v3, v2

    .line 391
    .line 392
    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-nez v0, :cond_12

    .line 397
    .line 398
    goto :goto_c

    .line 399
    :cond_12
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 400
    .line 401
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 402
    .line 403
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 404
    .line 405
    aget-object v4, v4, v2

    .line 406
    .line 407
    const-string/jumbo v5, "setCalibrationGAMMA_MATRIX"

    .line 408
    .line 409
    .line 410
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    :try_start_6
    invoke-static {v15, v15, v3, v4, v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    if-nez v3, :cond_13

    .line 418
    .line 419
    const-string/jumbo v0, "xml gamma_matrix not found"

    .line 420
    .line 421
    .line 422
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    goto :goto_c

    .line 426
    :catch_4
    move-exception v0

    .line 427
    goto :goto_b

    .line 428
    :cond_13
    array-length v4, v3

    .line 429
    if-ge v4, v10, :cond_14

    .line 430
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    array-length v3, v3

    .line 437
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    goto :goto_c

    .line 448
    :cond_14
    aget-object v3, v3, v15

    .line 449
    .line 450
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 451
    .line 452
    invoke-virtual {v4, v7}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    if-eqz v4, :cond_15

    .line 461
    .line 462
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-nez v4, :cond_15

    .line 467
    .line 468
    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 469
    .line 470
    invoke-virtual {v0, v7}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v4

    .line 474
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    invoke-static {v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 478
    .line 479
    .line 480
    goto :goto_c

    .line 481
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    .line 483
    .line 484
    :cond_15
    :goto_c
    add-int/lit8 v2, v2, 0x1

    .line 485
    .line 486
    goto :goto_a

    .line 487
    :cond_16
    const/4 v7, 0x4

    .line 488
    if-gt v9, v7, :cond_1c

    .line 489
    .line 490
    move v2, v15

    .line 491
    :goto_d
    if-ge v2, v14, :cond_43

    .line 492
    .line 493
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 494
    .line 495
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 496
    .line 497
    aget-object v3, v3, v2

    .line 498
    .line 499
    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 500
    .line 501
    aget v3, v3, v4

    .line 502
    .line 503
    if-nez v3, :cond_17

    .line 504
    .line 505
    goto :goto_11

    .line 506
    :cond_17
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 507
    .line 508
    aget v3, v3, v2

    .line 509
    .line 510
    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-nez v0, :cond_18

    .line 515
    .line 516
    goto :goto_11

    .line 517
    :cond_18
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 518
    .line 519
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 520
    .line 521
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 522
    .line 523
    aget-object v4, v4, v2

    .line 524
    .line 525
    iget v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 526
    .line 527
    sub-int/2addr v5, v7

    .line 528
    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 529
    .line 530
    const-string/jumbo v6, "hsc48_lcg"

    .line 531
    .line 532
    .line 533
    const-string/jumbo v9, "setCalibrationHSC48_LCG: "

    .line 534
    .line 535
    .line 536
    invoke-static {v5, v9, v13}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    move v5, v15

    .line 540
    :goto_e
    if-ge v5, v8, :cond_1b

    .line 541
    .line 542
    :try_start_7
    invoke-static {v5, v15, v3, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v9

    .line 546
    if-eqz v9, :cond_1a

    .line 547
    .line 548
    array-length v11, v9

    .line 549
    if-ge v11, v10, :cond_19

    .line 550
    .line 551
    goto :goto_f

    .line 552
    :cond_19
    aget-object v9, v9, v15

    .line 553
    .line 554
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v11

    .line 558
    const-string/jumbo v12, "hsc48_idx"

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0, v12}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v12

    .line 565
    invoke-static {v12, v11}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0, v6}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v11

    .line 572
    invoke-static {v11, v9}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 573
    .line 574
    .line 575
    add-int/lit8 v5, v5, 0x1

    .line 576
    .line 577
    goto :goto_e

    .line 578
    :catch_5
    move-exception v0

    .line 579
    goto :goto_10

    .line 580
    :cond_1a
    :goto_f
    const-string/jumbo v0, "xml hsc48_lcg not found"

    .line 581
    .line 582
    .line 583
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 584
    .line 585
    .line 586
    goto :goto_11

    .line 587
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 588
    .line 589
    .line 590
    :cond_1b
    :goto_11
    add-int/lit8 v2, v2, 0x1

    .line 591
    .line 592
    goto :goto_d

    .line 593
    :cond_1c
    const/4 v7, 0x5

    .line 594
    if-gt v9, v7, :cond_22

    .line 595
    .line 596
    move v2, v15

    .line 597
    :goto_12
    if-ge v2, v14, :cond_43

    .line 598
    .line 599
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 600
    .line 601
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 602
    .line 603
    aget-object v3, v3, v2

    .line 604
    .line 605
    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 606
    .line 607
    aget v3, v3, v4

    .line 608
    .line 609
    if-nez v3, :cond_1d

    .line 610
    .line 611
    goto :goto_14

    .line 612
    :cond_1d
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 613
    .line 614
    aget v3, v3, v2

    .line 615
    .line 616
    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    if-nez v0, :cond_1e

    .line 621
    .line 622
    goto :goto_14

    .line 623
    :cond_1e
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 624
    .line 625
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 626
    .line 627
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 628
    .line 629
    aget-object v4, v4, v2

    .line 630
    .line 631
    const-string/jumbo v5, "setCalibrationHSC"

    .line 632
    .line 633
    .line 634
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    :try_start_8
    invoke-static {v15, v15, v3, v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    if-nez v3, :cond_1f

    .line 642
    .line 643
    const-string/jumbo v0, "xml hsc not found"

    .line 644
    .line 645
    .line 646
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .line 648
    .line 649
    goto :goto_14

    .line 650
    :catch_6
    move-exception v0

    .line 651
    goto :goto_13

    .line 652
    :cond_1f
    array-length v4, v3

    .line 653
    if-ge v4, v10, :cond_20

    .line 654
    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    .line 656
    .line 657
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    array-length v3, v3

    .line 661
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    goto :goto_14

    .line 672
    :cond_20
    aget-object v3, v3, v15

    .line 673
    .line 674
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 675
    .line 676
    invoke-virtual {v4, v6}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    if-eqz v4, :cond_21

    .line 685
    .line 686
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v4

    .line 690
    if-nez v4, :cond_21

    .line 691
    .line 692
    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 693
    .line 694
    invoke-virtual {v0, v6}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 699
    .line 700
    .line 701
    invoke-static {v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 702
    .line 703
    .line 704
    goto :goto_14

    .line 705
    :goto_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 706
    .line 707
    .line 708
    :cond_21
    :goto_14
    add-int/lit8 v2, v2, 0x1

    .line 709
    .line 710
    goto :goto_12

    .line 711
    :cond_22
    const/4 v6, 0x6

    .line 712
    if-gt v9, v6, :cond_28

    .line 713
    .line 714
    move v2, v15

    .line 715
    :goto_15
    if-ge v2, v14, :cond_43

    .line 716
    .line 717
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 718
    .line 719
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 720
    .line 721
    aget-object v3, v3, v2

    .line 722
    .line 723
    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 724
    .line 725
    aget v3, v3, v4

    .line 726
    .line 727
    if-nez v3, :cond_23

    .line 728
    .line 729
    goto :goto_17

    .line 730
    :cond_23
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 731
    .line 732
    aget v3, v3, v2

    .line 733
    .line 734
    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    if-nez v0, :cond_24

    .line 739
    .line 740
    goto :goto_17

    .line 741
    :cond_24
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 742
    .line 743
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 744
    .line 745
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 746
    .line 747
    aget-object v4, v4, v2

    .line 748
    .line 749
    const-string/jumbo v6, "setCalibrationSCL"

    .line 750
    .line 751
    .line 752
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .line 754
    .line 755
    :try_start_9
    invoke-static {v15, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    if-nez v3, :cond_25

    .line 760
    .line 761
    const-string/jumbo v0, "xml scl not found"

    .line 762
    .line 763
    .line 764
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    .line 766
    .line 767
    goto :goto_17

    .line 768
    :catch_7
    move-exception v0

    .line 769
    goto :goto_16

    .line 770
    :cond_25
    array-length v4, v3

    .line 771
    if-ge v4, v10, :cond_26

    .line 772
    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    .line 774
    .line 775
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    array-length v3, v3

    .line 779
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .line 788
    .line 789
    goto :goto_17

    .line 790
    :cond_26
    aget-object v3, v3, v15

    .line 791
    .line 792
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 793
    .line 794
    invoke-virtual {v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    invoke-static {v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v4

    .line 802
    if-eqz v4, :cond_27

    .line 803
    .line 804
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    move-result v4

    .line 808
    if-nez v4, :cond_27

    .line 809
    .line 810
    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 811
    .line 812
    invoke-virtual {v0, v5}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v4

    .line 816
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    .line 818
    .line 819
    invoke-static {v4, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 820
    .line 821
    .line 822
    goto :goto_17

    .line 823
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 824
    .line 825
    .line 826
    :cond_27
    :goto_17
    add-int/lit8 v2, v2, 0x1

    .line 827
    .line 828
    goto :goto_15

    .line 829
    :cond_28
    const/16 v5, 0x9

    .line 830
    .line 831
    if-gt v9, v5, :cond_2e

    .line 832
    .line 833
    move v3, v15

    .line 834
    :goto_18
    if-ge v3, v14, :cond_43

    .line 835
    .line 836
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 837
    .line 838
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 839
    .line 840
    aget-object v4, v4, v3

    .line 841
    .line 842
    iget v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 843
    .line 844
    aget v4, v4, v5

    .line 845
    .line 846
    if-nez v4, :cond_29

    .line 847
    .line 848
    goto :goto_1c

    .line 849
    :cond_29
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 850
    .line 851
    aget v4, v4, v3

    .line 852
    .line 853
    invoke-static {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 854
    .line 855
    .line 856
    move-result v0

    .line 857
    if-nez v0, :cond_2a

    .line 858
    .line 859
    goto :goto_1c

    .line 860
    :cond_2a
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 861
    .line 862
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 863
    .line 864
    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 865
    .line 866
    aget-object v5, v5, v3

    .line 867
    .line 868
    iget v6, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 869
    .line 870
    add-int/lit8 v6, v6, -0x7

    .line 871
    .line 872
    const-string/jumbo v7, "setCalibrationCGC17_ENC + "

    .line 873
    .line 874
    .line 875
    invoke-static {v6, v7, v13}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    move v7, v15

    .line 879
    :goto_19
    const/16 v8, 0x11

    .line 880
    .line 881
    if-ge v7, v8, :cond_2d

    .line 882
    .line 883
    :try_start_a
    invoke-static {v6, v7, v4, v5, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v8

    .line 887
    if-eqz v8, :cond_2c

    .line 888
    .line 889
    array-length v9, v8

    .line 890
    if-ge v9, v10, :cond_2b

    .line 891
    .line 892
    goto :goto_1a

    .line 893
    :cond_2b
    aget-object v8, v8, v15

    .line 894
    .line 895
    mul-int/lit8 v9, v6, 0x11

    .line 896
    .line 897
    add-int/2addr v9, v7

    .line 898
    invoke-virtual {v0, v9}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->sysfsWriteCGC17_IDX(I)V

    .line 899
    .line 900
    .line 901
    iget-object v9, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 902
    .line 903
    invoke-virtual {v9, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v9

    .line 907
    invoke-static {v9, v8}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 908
    .line 909
    .line 910
    add-int/lit8 v7, v7, 0x1

    .line 911
    .line 912
    goto :goto_19

    .line 913
    :catch_8
    move-exception v0

    .line 914
    goto :goto_1b

    .line 915
    :cond_2c
    :goto_1a
    const-string/jumbo v0, "xml cgc17_enc not found"

    .line 916
    .line 917
    .line 918
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 919
    .line 920
    .line 921
    goto :goto_1c

    .line 922
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 923
    .line 924
    .line 925
    :cond_2d
    const-string/jumbo v0, "setCalibrationCGC17_ENC - "

    .line 926
    .line 927
    .line 928
    invoke-static {v6, v0, v13}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    .line 932
    .line 933
    goto :goto_18

    .line 934
    :cond_2e
    const/16 v2, 0xa

    .line 935
    .line 936
    if-gt v9, v2, :cond_31

    .line 937
    .line 938
    :goto_1d
    if-ge v15, v14, :cond_43

    .line 939
    .line 940
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 941
    .line 942
    iget-object v2, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 943
    .line 944
    aget-object v2, v2, v15

    .line 945
    .line 946
    iget v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 947
    .line 948
    aget v2, v2, v3

    .line 949
    .line 950
    if-nez v2, :cond_2f

    .line 951
    .line 952
    goto :goto_1e

    .line 953
    :cond_2f
    iget-object v2, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 954
    .line 955
    aget v2, v2, v15

    .line 956
    .line 957
    invoke-static {v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 958
    .line 959
    .line 960
    move-result v0

    .line 961
    if-nez v0, :cond_30

    .line 962
    .line 963
    goto :goto_1e

    .line 964
    :cond_30
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 965
    .line 966
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 967
    .line 968
    .line 969
    const-string/jumbo v2, "setCalibrationCGC17_DEC"

    .line 970
    .line 971
    .line 972
    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    .line 974
    .line 975
    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 976
    .line 977
    const-string/jumbo v2, "cgc17_dec"

    .line 978
    .line 979
    .line 980
    invoke-virtual {v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    const-string v2, "7"

    .line 985
    .line 986
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 987
    .line 988
    .line 989
    move-result-object v2

    .line 990
    invoke-static {v0, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    .line 991
    .line 992
    .line 993
    :goto_1e
    add-int/lit8 v15, v15, 0x1

    .line 994
    .line 995
    goto :goto_1d

    .line 996
    :cond_31
    const/16 v2, 0xb

    .line 997
    .line 998
    if-gt v9, v2, :cond_37

    .line 999
    .line 1000
    move v2, v15

    .line 1001
    :goto_1f
    if-ge v2, v14, :cond_43

    .line 1002
    .line 1003
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 1004
    .line 1005
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 1006
    .line 1007
    aget-object v3, v3, v2

    .line 1008
    .line 1009
    iget v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 1010
    .line 1011
    aget v3, v3, v5

    .line 1012
    .line 1013
    if-nez v3, :cond_32

    .line 1014
    .line 1015
    goto :goto_21

    .line 1016
    :cond_32
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 1017
    .line 1018
    aget v3, v3, v2

    .line 1019
    .line 1020
    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v0

    .line 1024
    if-nez v0, :cond_33

    .line 1025
    .line 1026
    goto :goto_21

    .line 1027
    :cond_33
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 1028
    .line 1029
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 1030
    .line 1031
    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 1032
    .line 1033
    aget-object v5, v5, v2

    .line 1034
    .line 1035
    const-string/jumbo v6, "setCalibrationCGC17_CON"

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .line 1040
    .line 1041
    :try_start_b
    invoke-static {v15, v15, v3, v5, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v3

    .line 1045
    if-nez v3, :cond_34

    .line 1046
    .line 1047
    const-string/jumbo v0, "xml cgc17_con not found"

    .line 1048
    .line 1049
    .line 1050
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    .line 1052
    .line 1053
    goto :goto_21

    .line 1054
    :catch_9
    move-exception v0

    .line 1055
    goto :goto_20

    .line 1056
    :cond_34
    array-length v5, v3

    .line 1057
    if-ge v5, v10, :cond_35

    .line 1058
    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    array-length v3, v3

    .line 1065
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    .line 1074
    .line 1075
    goto :goto_21

    .line 1076
    :cond_35
    aget-object v3, v3, v15

    .line 1077
    .line 1078
    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 1079
    .line 1080
    invoke-virtual {v5, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v5

    .line 1084
    invoke-static {v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v5

    .line 1088
    if-eqz v5, :cond_36

    .line 1089
    .line 1090
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v5

    .line 1094
    if-nez v5, :cond_36

    .line 1095
    .line 1096
    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 1097
    .line 1098
    invoke-virtual {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v5

    .line 1102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1103
    .line 1104
    .line 1105
    invoke-static {v5, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 1106
    .line 1107
    .line 1108
    goto :goto_21

    .line 1109
    :goto_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1110
    .line 1111
    .line 1112
    :cond_36
    :goto_21
    add-int/lit8 v2, v2, 0x1

    .line 1113
    .line 1114
    goto :goto_1f

    .line 1115
    :cond_37
    const/16 v2, 0xc

    .line 1116
    .line 1117
    if-gt v9, v2, :cond_3c

    .line 1118
    .line 1119
    move v2, v15

    .line 1120
    :goto_22
    if-ge v2, v14, :cond_43

    .line 1121
    .line 1122
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 1123
    .line 1124
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 1125
    .line 1126
    aget-object v3, v3, v2

    .line 1127
    .line 1128
    iget v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 1129
    .line 1130
    aget v3, v3, v4

    .line 1131
    .line 1132
    if-nez v3, :cond_38

    .line 1133
    .line 1134
    goto :goto_24

    .line 1135
    :cond_38
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 1136
    .line 1137
    aget v3, v3, v2

    .line 1138
    .line 1139
    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 1140
    .line 1141
    .line 1142
    move-result v0

    .line 1143
    if-nez v0, :cond_39

    .line 1144
    .line 1145
    goto :goto_24

    .line 1146
    :cond_39
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 1147
    .line 1148
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 1149
    .line 1150
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 1151
    .line 1152
    aget-object v4, v4, v2

    .line 1153
    .line 1154
    const-string/jumbo v5, "cgc_dither"

    .line 1155
    .line 1156
    .line 1157
    const-string/jumbo v6, "setCalibrationCGC_DITHER"

    .line 1158
    .line 1159
    .line 1160
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    .line 1162
    .line 1163
    :try_start_c
    invoke-static {v15, v15, v3, v4, v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v3

    .line 1167
    if-nez v3, :cond_3a

    .line 1168
    .line 1169
    const-string/jumbo v0, "xml degamma not found"

    .line 1170
    .line 1171
    .line 1172
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    .line 1174
    .line 1175
    goto :goto_24

    .line 1176
    :catch_a
    move-exception v0

    .line 1177
    goto :goto_23

    .line 1178
    :cond_3a
    array-length v4, v3

    .line 1179
    if-ge v4, v10, :cond_3b

    .line 1180
    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    array-length v3, v3

    .line 1187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v0

    .line 1194
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    .line 1196
    .line 1197
    goto :goto_24

    .line 1198
    :cond_3b
    aget-object v3, v3, v15

    .line 1199
    .line 1200
    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 1201
    .line 1202
    invoke-virtual {v0, v5}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v0

    .line 1206
    invoke-static {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 1207
    .line 1208
    .line 1209
    goto :goto_24

    .line 1210
    :goto_23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1211
    .line 1212
    .line 1213
    :goto_24
    add-int/lit8 v2, v2, 0x1

    .line 1214
    .line 1215
    goto :goto_22

    .line 1216
    :cond_3c
    const/16 v2, 0xd

    .line 1217
    .line 1218
    if-gt v9, v2, :cond_42

    .line 1219
    .line 1220
    move v2, v15

    .line 1221
    :goto_25
    if-ge v2, v14, :cond_43

    .line 1222
    .line 1223
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 1224
    .line 1225
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerTable:[[I

    .line 1226
    .line 1227
    aget-object v4, v4, v2

    .line 1228
    .line 1229
    iget v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 1230
    .line 1231
    aget v4, v4, v5

    .line 1232
    .line 1233
    if-nez v4, :cond_3d

    .line 1234
    .line 1235
    goto :goto_27

    .line 1236
    :cond_3d
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeModeIdx:[I

    .line 1237
    .line 1238
    aget v4, v4, v2

    .line 1239
    .line 1240
    invoke-static {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 1241
    .line 1242
    .line 1243
    move-result v0

    .line 1244
    if-nez v0, :cond_3e

    .line 1245
    .line 1246
    goto :goto_27

    .line 1247
    :cond_3e
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 1248
    .line 1249
    iget-object v4, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mFactoryXMLPath:Ljava/lang/String;

    .line 1250
    .line 1251
    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mColorModeSettingTable:[Ljava/lang/String;

    .line 1252
    .line 1253
    aget-object v5, v5, v2

    .line 1254
    .line 1255
    const-string/jumbo v6, "setCalibrationDE"

    .line 1256
    .line 1257
    .line 1258
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    .line 1260
    .line 1261
    :try_start_d
    invoke-static {v15, v15, v4, v5, v3}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLText(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v4

    .line 1265
    if-nez v4, :cond_3f

    .line 1266
    .line 1267
    const-string/jumbo v0, "xml de not found"

    .line 1268
    .line 1269
    .line 1270
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    .line 1272
    .line 1273
    goto :goto_27

    .line 1274
    :catch_b
    move-exception v0

    .line 1275
    goto :goto_26

    .line 1276
    :cond_3f
    array-length v5, v4

    .line 1277
    if-ge v5, v10, :cond_40

    .line 1278
    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1280
    .line 1281
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1282
    .line 1283
    .line 1284
    array-length v4, v4

    .line 1285
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v0

    .line 1292
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    .line 1294
    .line 1295
    goto :goto_27

    .line 1296
    :cond_40
    aget-object v4, v4, v15

    .line 1297
    .line 1298
    iget-object v5, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 1299
    .line 1300
    invoke-virtual {v5, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v5

    .line 1304
    invoke-static {v5}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v5

    .line 1308
    if-eqz v5, :cond_41

    .line 1309
    .line 1310
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v5

    .line 1314
    if-nez v5, :cond_41

    .line 1315
    .line 1316
    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 1317
    .line 1318
    invoke-virtual {v0, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v5

    .line 1322
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1323
    .line 1324
    .line 1325
    invoke-static {v5, v4}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 1326
    .line 1327
    .line 1328
    goto :goto_27

    .line 1329
    :goto_26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1330
    .line 1331
    .line 1332
    :cond_41
    :goto_27
    add-int/lit8 v2, v2, 0x1

    .line 1333
    .line 1334
    goto :goto_25

    .line 1335
    :cond_42
    const/16 v2, 0xe

    .line 1336
    .line 1337
    if-gt v9, v2, :cond_43

    .line 1338
    .line 1339
    invoke-static {v0, v15}, Lcom/android/server/display/exynos/ExynosDisplayFactory;->-$$Nest$msetCalibrationMODE_IDX(Lcom/android/server/display/exynos/ExynosDisplayFactory;I)Z

    .line 1340
    .line 1341
    .line 1342
    :cond_43
    iget-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayFactory$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 1343
    .line 1344
    iget v1, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 1345
    .line 1346
    add-int/2addr v1, v10

    .line 1347
    iput v1, v0, Lcom/android/server/display/exynos/ExynosDisplayFactory;->mCountDownTimerCount:I

    .line 1348
    .line 1349
    return-void
.end method

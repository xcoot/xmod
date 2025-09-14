.class public interface abstract Lcom/android/server/alarm/AppSyncInfo$Sales;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ATT:Z

.field public static final JAPAN:Z

.field public static final MPCS:Z

.field public static final SPR:Z

.field public static final TMO:Z

.field public static final USCC:Z

.field public static final VZW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 2
    .line 3
    .line 4
    const-string v1, "NONE"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "VZW"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sput-boolean v1, Lcom/android/server/alarm/AppSyncInfo$Sales;->VZW:Z

    .line 25
    .line 26
    const-string v2, "ATT"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v4, 0x0

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    const-string v2, "AIO"

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    const-string v2, "CRI"

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v2, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    move v2, v3

    .line 56
    :goto_1
    sput-boolean v2, Lcom/android/server/alarm/AppSyncInfo$Sales;->ATT:Z

    .line 57
    .line 58
    const-string v5, "TMB"

    .line 59
    .line 60
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    sput-boolean v5, Lcom/android/server/alarm/AppSyncInfo$Sales;->TMO:Z

    .line 65
    .line 66
    const-string v6, "TMK"

    .line 67
    .line 68
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    sput-boolean v6, Lcom/android/server/alarm/AppSyncInfo$Sales;->MPCS:Z

    .line 73
    .line 74
    const-string v6, "SPR"

    .line 75
    .line 76
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_3

    .line 81
    .line 82
    const-string v6, "BST"

    .line 83
    .line 84
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_3

    .line 89
    .line 90
    const-string v6, "VMU"

    .line 91
    .line 92
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_3

    .line 97
    .line 98
    const-string v6, "XAS"

    .line 99
    .line 100
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_2

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    move v6, v4

    .line 108
    goto :goto_3

    .line 109
    :cond_3
    :goto_2
    move v6, v3

    .line 110
    :goto_3
    sput-boolean v6, Lcom/android/server/alarm/AppSyncInfo$Sales;->SPR:Z

    .line 111
    .line 112
    const-string v7, "USC"

    .line 113
    .line 114
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-nez v7, :cond_5

    .line 119
    .line 120
    const-string v7, "LRA"

    .line 121
    .line 122
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-nez v7, :cond_5

    .line 127
    .line 128
    const-string v7, "ACG"

    .line 129
    .line 130
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_4

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_4
    move v3, v4

    .line 138
    :cond_5
    :goto_4
    sput-boolean v3, Lcom/android/server/alarm/AppSyncInfo$Sales;->USCC:Z

    .line 139
    .line 140
    const-string v4, "RWC"

    .line 141
    .line 142
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-nez v4, :cond_6

    .line 147
    .line 148
    const-string v4, "FMC"

    .line 149
    .line 150
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-nez v4, :cond_6

    .line 155
    .line 156
    const-string v4, "MTA"

    .line 157
    .line 158
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-nez v4, :cond_6

    .line 163
    .line 164
    const-string v4, "CHR"

    .line 165
    .line 166
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-nez v4, :cond_6

    .line 171
    .line 172
    const-string v4, "MTS"

    .line 173
    .line 174
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-nez v4, :cond_6

    .line 179
    .line 180
    const-string v4, "TLS"

    .line 181
    .line 182
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-nez v4, :cond_6

    .line 187
    .line 188
    const-string v4, "KDO"

    .line 189
    .line 190
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-nez v4, :cond_6

    .line 195
    .line 196
    const-string v4, "SPC"

    .line 197
    .line 198
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-nez v4, :cond_6

    .line 203
    .line 204
    const-string v4, "CLN"

    .line 205
    .line 206
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-nez v4, :cond_6

    .line 211
    .line 212
    const-string v4, "BMC"

    .line 213
    .line 214
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-nez v4, :cond_6

    .line 219
    .line 220
    const-string v4, "VMC"

    .line 221
    .line 222
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-nez v4, :cond_6

    .line 227
    .line 228
    const-string v4, "PCM"

    .line 229
    .line 230
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-nez v4, :cond_6

    .line 235
    .line 236
    const-string v4, "SOL"

    .line 237
    .line 238
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-nez v4, :cond_6

    .line 243
    .line 244
    const-string v4, "BWA"

    .line 245
    .line 246
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-nez v4, :cond_6

    .line 251
    .line 252
    const-string v4, "GLW"

    .line 253
    .line 254
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-nez v4, :cond_6

    .line 259
    .line 260
    const-string v4, "VTR"

    .line 261
    .line 262
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-nez v4, :cond_6

    .line 267
    .line 268
    const-string v4, "ESK"

    .line 269
    .line 270
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-nez v4, :cond_6

    .line 275
    .line 276
    const-string v4, "PMB"

    .line 277
    .line 278
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-nez v4, :cond_6

    .line 283
    .line 284
    const-string v4, "XAC"

    .line 285
    .line 286
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    :cond_6
    const-string v4, "CHN"

    .line 291
    .line 292
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    if-nez v4, :cond_7

    .line 297
    .line 298
    const-string v4, "CHU"

    .line 299
    .line 300
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-nez v4, :cond_7

    .line 305
    .line 306
    const-string v4, "CTC"

    .line 307
    .line 308
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-nez v4, :cond_7

    .line 313
    .line 314
    const-string v4, "CHM"

    .line 315
    .line 316
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-nez v4, :cond_7

    .line 321
    .line 322
    const-string v4, "CHC"

    .line 323
    .line 324
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    :cond_7
    const-string v4, "DCM"

    .line 329
    .line 330
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    sput-boolean v4, Lcom/android/server/alarm/AppSyncInfo$Sales;->JAPAN:Z

    .line 335
    .line 336
    if-nez v1, :cond_8

    .line 337
    .line 338
    if-nez v2, :cond_8

    .line 339
    .line 340
    if-nez v5, :cond_8

    .line 341
    .line 342
    if-nez v6, :cond_8

    .line 343
    .line 344
    if-nez v3, :cond_8

    .line 345
    .line 346
    const-string v1, "XAR"

    .line 347
    .line 348
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-nez v1, :cond_8

    .line 353
    .line 354
    const-string v1, "MTR"

    .line 355
    .line 356
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-nez v1, :cond_8

    .line 361
    .line 362
    const-string v1, "SPT"

    .line 363
    .line 364
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-nez v1, :cond_8

    .line 369
    .line 370
    const-string v1, "CSP"

    .line 371
    .line 372
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-nez v1, :cond_8

    .line 377
    .line 378
    const-string v1, "TFN"

    .line 379
    .line 380
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_8

    .line 385
    .line 386
    const-string v1, "BNN"

    .line 387
    .line 388
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    :cond_8
    return-void
.end method

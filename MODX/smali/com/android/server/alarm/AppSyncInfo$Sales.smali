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

    .line 4
    const-string v1, "NONE"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "VZW"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    sput-boolean v1, Lcom/android/server/alarm/AppSyncInfo$Sales;->VZW:Z

    .line 26
    const-string v2, "ATT"

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v4, 0x0

    .line 34
    if-nez v2, :cond_1

    .line 36
    const-string v2, "AIO"

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 44
    const-string v2, "CRI"

    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

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

    .line 58
    const-string v5, "TMB"

    .line 60
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v5

    .line 64
    sput-boolean v5, Lcom/android/server/alarm/AppSyncInfo$Sales;->TMO:Z

    .line 66
    const-string v6, "TMK"

    .line 68
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v6

    .line 72
    sput-boolean v6, Lcom/android/server/alarm/AppSyncInfo$Sales;->MPCS:Z

    .line 74
    const-string v6, "SPR"

    .line 76
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_3

    .line 82
    const-string v6, "BST"

    .line 84
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_3

    .line 90
    const-string v6, "VMU"

    .line 92
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_3

    .line 98
    const-string v6, "XAS"

    .line 100
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_2

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

    .line 112
    const-string v7, "USC"

    .line 114
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result v7

    .line 118
    if-nez v7, :cond_5

    .line 120
    const-string v7, "LRA"

    .line 122
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v7

    .line 126
    if-nez v7, :cond_5

    .line 128
    const-string v7, "ACG"

    .line 130
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_4

    .line 136
    goto :goto_4

    .line 137
    :cond_4
    move v3, v4

    .line 138
    :cond_5
    :goto_4
    sput-boolean v3, Lcom/android/server/alarm/AppSyncInfo$Sales;->USCC:Z

    .line 140
    const-string v4, "RWC"

    .line 142
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v4

    .line 146
    if-nez v4, :cond_6

    .line 148
    const-string v4, "FMC"

    .line 150
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v4

    .line 154
    if-nez v4, :cond_6

    .line 156
    const-string v4, "MTA"

    .line 158
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v4

    .line 162
    if-nez v4, :cond_6

    .line 164
    const-string v4, "CHR"

    .line 166
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v4

    .line 170
    if-nez v4, :cond_6

    .line 172
    const-string v4, "MTS"

    .line 174
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v4

    .line 178
    if-nez v4, :cond_6

    .line 180
    const-string v4, "TLS"

    .line 182
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v4

    .line 186
    if-nez v4, :cond_6

    .line 188
    const-string v4, "KDO"

    .line 190
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v4

    .line 194
    if-nez v4, :cond_6

    .line 196
    const-string v4, "SPC"

    .line 198
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    move-result v4

    .line 202
    if-nez v4, :cond_6

    .line 204
    const-string v4, "CLN"

    .line 206
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    move-result v4

    .line 210
    if-nez v4, :cond_6

    .line 212
    const-string v4, "BMC"

    .line 214
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result v4

    .line 218
    if-nez v4, :cond_6

    .line 220
    const-string v4, "VMC"

    .line 222
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    move-result v4

    .line 226
    if-nez v4, :cond_6

    .line 228
    const-string v4, "PCM"

    .line 230
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    move-result v4

    .line 234
    if-nez v4, :cond_6

    .line 236
    const-string v4, "SOL"

    .line 238
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    move-result v4

    .line 242
    if-nez v4, :cond_6

    .line 244
    const-string v4, "BWA"

    .line 246
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    move-result v4

    .line 250
    if-nez v4, :cond_6

    .line 252
    const-string v4, "GLW"

    .line 254
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    move-result v4

    .line 258
    if-nez v4, :cond_6

    .line 260
    const-string v4, "VTR"

    .line 262
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    move-result v4

    .line 266
    if-nez v4, :cond_6

    .line 268
    const-string v4, "ESK"

    .line 270
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    move-result v4

    .line 274
    if-nez v4, :cond_6

    .line 276
    const-string v4, "PMB"

    .line 278
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    move-result v4

    .line 282
    if-nez v4, :cond_6

    .line 284
    const-string v4, "XAC"

    .line 286
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result v4

    .line 290
    :cond_6
    const-string v4, "CHN"

    .line 292
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    move-result v4

    .line 296
    if-nez v4, :cond_7

    .line 298
    const-string v4, "CHU"

    .line 300
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result v4

    .line 304
    if-nez v4, :cond_7

    .line 306
    const-string v4, "CTC"

    .line 308
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    move-result v4

    .line 312
    if-nez v4, :cond_7

    .line 314
    const-string v4, "CHM"

    .line 316
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    move-result v4

    .line 320
    if-nez v4, :cond_7

    .line 322
    const-string v4, "CHC"

    .line 324
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    move-result v4

    .line 328
    :cond_7
    const-string v4, "DCM"

    .line 330
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    move-result v4

    .line 334
    sput-boolean v4, Lcom/android/server/alarm/AppSyncInfo$Sales;->JAPAN:Z

    .line 336
    if-nez v1, :cond_8

    .line 338
    if-nez v2, :cond_8

    .line 340
    if-nez v5, :cond_8

    .line 342
    if-nez v6, :cond_8

    .line 344
    if-nez v3, :cond_8

    .line 346
    const-string v1, "XAR"

    .line 348
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    move-result v1

    .line 352
    if-nez v1, :cond_8

    .line 354
    const-string v1, "MTR"

    .line 356
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    move-result v1

    .line 360
    if-nez v1, :cond_8

    .line 362
    const-string v1, "SPT"

    .line 364
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    move-result v1

    .line 368
    if-nez v1, :cond_8

    .line 370
    const-string v1, "CSP"

    .line 372
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    move-result v1

    .line 376
    if-nez v1, :cond_8

    .line 378
    const-string v1, "TFN"

    .line 380
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_8

    .line 386
    const-string v1, "BNN"

    .line 388
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    :cond_8
    return-void
.end method

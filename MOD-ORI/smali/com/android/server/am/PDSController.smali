.class public final Lcom/android/server/am/PDSController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG_ENG:Z

.field public static final DEBUG_HIGH:Z

.field public static final DEBUG_MID:Z

.field public static final PDSLock:Lcom/android/server/am/PDSController$Lock;


# instance fields
.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mContext:Landroid/content/Context;

.field public mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

.field public mIsPDSEnable:Z

.field public mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

.field public mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

.field public mPDSTargetlist:Ljava/util/List;

.field public mScreenOn:Z

.field public mpsmPolicy:Lcom/android/server/am/PDSController$Policy;

.field public udsPolicy:Lcom/android/server/am/PDSController$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/am/PDSController$Lock;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 7
    .line 8
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 9
    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "0x494d"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sput-boolean v2, Lcom/android/server/am/PDSController;->DEBUG_MID:Z

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "0x4948"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    sput-boolean v1, Lcom/android/server/am/PDSController;->DEBUG_HIGH:Z

    .line 36
    .line 37
    const-string/jumbo v1, "ro.build.type"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v2, "user"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    const-string v1, "0x4f4c"

    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 69
    :goto_1
    sput-boolean v0, Lcom/android/server/am/PDSController;->DEBUG_ENG:Z

    .line 70
    .line 71
    return-void
.end method

.method public static formatDateTimeWithoutYear(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "null"

    .line 8
    .line 9
    .line 10
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string p1, "%18s"

    .line 15
    .line 16
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    const-string v1, "MM/dd HH:mm:ss.SSS"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/util/Date;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method


# virtual methods
.method public final dumpPDS(Ljava/io/PrintWriter;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "mPDSTargetPackages --- size "

    .line 2
    .line 3
    .line 4
    const-string v1, "UDS = "

    .line 5
    .line 6
    const-string v2, "PDSController"

    .line 7
    .line 8
    const-string/jumbo v3, "dumpPDS"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-string v2, "ACTIVITY MANAGER PDS (dumpsys activity PDS)"

    .line 15
    .line 16
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 20
    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/am/PDSController;->udsPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 28
    .line 29
    iget-boolean v1, v1, Lcom/android/server/am/PDSController$Policy;->enabled:Z

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", MP = "

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/am/PDSController;->mpsmPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 40
    .line 41
    iget-boolean v1, v1, Lcom/android/server/am/PDSController$Policy;->enabled:Z

    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    .line 84
    const-string v0, "No Policy Trigger !!!"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto/16 :goto_8

    .line 92
    .line 93
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 94
    move v1, v0

    .line 95
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 96
    .line 97
    iget-object v3, v3, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-ge v1, v3, :cond_7

    .line 104
    .line 105
    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 106
    .line 107
    iget-object v3, v3, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 108
    .line 109
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Landroid/util/SparseArray;

    .line 114
    .line 115
    move v4, v0

    .line 116
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-ge v4, v5, :cond_6

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 127
    .line 128
    if-eqz v5, :cond_5

    .line 129
    .line 130
    const-string v6, "-RST "

    .line 131
    .line 132
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-wide v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->disableResetTime:J

    .line 136
    .line 137
    const-wide/16 v8, 0x0

    .line 138
    .line 139
    cmp-long v8, v6, v8

    .line 140
    .line 141
    if-nez v8, :cond_1

    .line 142
    .line 143
    const-string/jumbo v6, "null"

    .line 144
    .line 145
    .line 146
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    const-string v7, "%23s"

    .line 151
    .line 152
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    goto :goto_3

    .line 157
    :cond_1
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 158
    .line 159
    const-string/jumbo v9, "yyyy/MM/dd HH:mm:ss.SSS"

    .line 160
    .line 161
    .line 162
    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v9, Ljava/util/Date;

    .line 166
    .line 167
    invoke-direct {v9, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    :goto_3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v6, "-Uid "

    .line 178
    .line 179
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string v6, "%8d"

    .line 183
    .line 184
    iget v7, v5, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    .line 185
    .line 186
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sget-boolean v6, Lcom/android/server/am/PDSController;->DEBUG_ENG:Z

    .line 202
    .line 203
    if-eqz v6, :cond_2

    .line 204
    .line 205
    const-string v6, "-curLv "

    .line 206
    .line 207
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_2
    iget v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->curLevel:I

    .line 211
    .line 212
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 213
    .line 214
    .line 215
    const-string v6, "("

    .line 216
    .line 217
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->fasType:I

    .line 221
    .line 222
    and-int/lit16 v6, v6, 0x81

    .line 223
    .line 224
    if-eqz v6, :cond_3

    .line 225
    .line 226
    const-string v6, "A"

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_3
    const-string v6, "-"

    .line 230
    .line 231
    :goto_4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string v6, ")"

    .line 235
    .line 236
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const-string v6, "-Pkg "

    .line 240
    .line 241
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    sget-object v6, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 250
    .line 251
    iget v5, v5, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    .line 252
    .line 253
    invoke-virtual {v6, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_4

    .line 258
    .line 259
    const-string v5, "--(R)"

    .line 260
    .line 261
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_4
    const-string v5, " "

    .line 265
    .line 266
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 270
    .line 271
    goto/16 :goto_2

    .line 272
    .line 273
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 274
    .line 275
    goto/16 :goto_1

    .line 276
    .line 277
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string/jumbo v3, "mPDSRestrictedPackages --- size "

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 289
    .line 290
    invoke-virtual {v3}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    move v1, v0

    .line 305
    :goto_5
    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 306
    .line 307
    iget-object v3, v3, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 308
    .line 309
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-ge v1, v3, :cond_a

    .line 314
    .line 315
    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 316
    .line 317
    iget-object v3, v3, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 318
    .line 319
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    check-cast v3, Landroid/util/SparseArray;

    .line 324
    .line 325
    move v4, v0

    .line 326
    :goto_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    if-ge v4, v5, :cond_9

    .line 331
    .line 332
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    check-cast v5, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 337
    .line 338
    const-string v6, "-Uid "

    .line 339
    .line 340
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    const-string v6, "%8d"

    .line 344
    .line 345
    iget v7, v5, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    .line 346
    .line 347
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    const-string v6, "-Pkg "

    .line 363
    .line 364
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    const-string v6, "-POL "

    .line 373
    .line 374
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v5, v5, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 378
    .line 379
    if-eqz v5, :cond_8

    .line 380
    .line 381
    invoke-virtual {v5}, Lcom/android/server/am/PDSController$Policy;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    add-int/lit8 v6, v6, -0x3

    .line 390
    .line 391
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    goto :goto_7

    .line 403
    :cond_8
    const-string/jumbo v5, "null"

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    :goto_7
    const-string v5, " "

    .line 410
    .line 411
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    add-int/lit8 v4, v4, 0x1

    .line 415
    .line 416
    goto :goto_6

    .line 417
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_a
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    const-string p0, " "

    .line 422
    .line 423
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    sget-object p0, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    .line 427
    .line 428
    iget-object p0, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 429
    .line 430
    if-eqz p0, :cond_b

    .line 431
    .line 432
    new-instance v0, Landroid/util/PrintWriterPrinter;

    .line 433
    .line 434
    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 435
    .line 436
    .line 437
    const-string p1, "PDSHandler"

    .line 438
    .line 439
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    :cond_b
    return-void

    .line 443
    :goto_8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    throw p0
.end method

.method public final dumpPDSHistory(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ACTIVITY MANAGER PDS HISTORY (dumpsys activity PDS history)"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/am/PDSController;->DEBUG_MID:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    sget-boolean v0, Lcom/android/server/am/PDSController;->DEBUG_HIGH:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PDSController;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/am/mars/HistoryBuffer;->getBuffer()[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PDSController;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 30
    .line 31
    iget v2, v2, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    .line 32
    .line 33
    if-ge v1, v2, :cond_1

    .line 34
    .line 35
    aget-object v2, v0, v1

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p0, ""

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/server/am/pds/PDSHistoryBuffer$PDSHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHistoryBuffer;

    .line 50
    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    sget-object v0, Lcom/android/server/am/pds/PDSHistoryLog$PDSHistoryLogHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHistoryLog;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/am/pds/PDSHistoryLog;->getLog()Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    .line 59
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-ge v1, p0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const-string p0, ""

    .line 78
    .line 79
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_3
    return-void

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p0

    .line 85
    throw p1
.end method

.method public final forceRunPolicyForSpecificPolicy(I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x5

    .line 16
    const/16 v6, 0xa

    .line 17
    .line 18
    if-ne v0, v5, :cond_0

    .line 19
    .line 20
    iget-object v7, v1, Lcom/android/server/am/PDSController;->udsPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-ne v0, v6, :cond_1

    .line 24
    .line 25
    iget-object v7, v1, Lcom/android/server/am/PDSController;->mpsmPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v7, 0x0

    .line 29
    :goto_0
    if-eqz v7, :cond_1b

    .line 30
    .line 31
    iget-boolean v8, v7, Lcom/android/server/am/PDSController$Policy;->enabled:Z

    .line 32
    .line 33
    if-nez v8, :cond_2

    .line 34
    .line 35
    goto/16 :goto_14

    .line 36
    .line 37
    :cond_2
    iget v8, v7, Lcom/android/server/am/PDSController$Policy;->num:I

    .line 38
    .line 39
    if-eq v8, v5, :cond_4

    .line 40
    .line 41
    if-eq v8, v6, :cond_3

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const/16 v8, 0x9

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    const/4 v8, 0x6

    .line 49
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    sget-object v10, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 53
    .line 54
    invoke-virtual {v10}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 55
    .line 56
    .line 57
    sget-object v10, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 58
    .line 59
    monitor-enter v10

    .line 60
    const/4 v11, 0x0

    .line 61
    :goto_2
    :try_start_0
    iget-object v12, v1, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 62
    .line 63
    iget-object v12, v12, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    if-ge v11, v12, :cond_d

    .line 70
    .line 71
    iget-object v12, v1, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 72
    .line 73
    iget-object v12, v12, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    check-cast v12, Landroid/util/SparseArray;

    .line 80
    .line 81
    const/4 v14, 0x0

    .line 82
    :goto_3
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 83
    .line 84
    .line 85
    move-result v15

    .line 86
    if-ge v14, v15, :cond_c

    .line 87
    .line 88
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v15

    .line 92
    check-cast v15, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 93
    .line 94
    iget-object v4, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 95
    .line 96
    iget v9, v7, Lcom/android/server/am/PDSController$Policy;->num:I

    .line 97
    .line 98
    const-string/jumbo v13, "com.samsung.android.app.routineplus"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    if-ne v9, v6, :cond_5

    .line 108
    .line 109
    sget-boolean v4, Lcom/android/server/am/PDSController;->DEBUG_ENG:Z

    .line 110
    .line 111
    if-eqz v4, :cond_b

    .line 112
    .line 113
    const-string v4, "PDSController"

    .line 114
    .line 115
    new-instance v9, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string/jumbo v13, "package "

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v13, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v13, " inPolicyAllowList, don\'t execute this policy "

    .line 132
    .line 133
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :catchall_0
    move-exception v0

    .line 149
    goto/16 :goto_13

    .line 150
    .line 151
    :cond_5
    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 152
    .line 153
    iget v9, v7, Lcom/android/server/am/PDSController$Policy;->num:I

    .line 154
    .line 155
    if-eq v9, v5, :cond_7

    .line 156
    .line 157
    if-eq v9, v6, :cond_6

    .line 158
    .line 159
    const/4 v9, -0x1

    .line 160
    goto :goto_4

    .line 161
    :cond_6
    const/16 v9, 0x10

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_7
    move v9, v5

    .line 165
    :goto_4
    iget-object v13, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 166
    .line 167
    iget v6, v15, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 168
    .line 169
    iget v5, v15, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {v9, v6, v5, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-lez v4, :cond_9

    .line 179
    .line 180
    const-string v4, "PDSController"

    .line 181
    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v6, "FilterManager package "

    .line 188
    .line 189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v6, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v6, " inFilterManager, don\'t execute this policy "

    .line 198
    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    const/4 v5, 0x5

    .line 213
    :cond_8
    :goto_5
    const/16 v6, 0xa

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_9
    new-instance v4, Lcom/android/server/am/PDSController$PkgStatusInfo;

    .line 217
    .line 218
    iget-object v5, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 219
    .line 220
    iget v6, v15, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    .line 221
    .line 222
    iget v9, v15, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 223
    .line 224
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 225
    .line 226
    .line 227
    iput-object v5, v4, Lcom/android/server/am/PDSController$PkgStatusInfo;->name:Ljava/lang/String;

    .line 228
    .line 229
    iput v6, v4, Lcom/android/server/am/PDSController$PkgStatusInfo;->uid:I

    .line 230
    .line 231
    iput v9, v4, Lcom/android/server/am/PDSController$PkgStatusInfo;->userId:I

    .line 232
    .line 233
    const/4 v5, 0x5

    .line 234
    if-ne v0, v5, :cond_a

    .line 235
    .line 236
    iget v6, v15, Lcom/android/server/am/pds/PDSPackageInfo;->uds:I

    .line 237
    .line 238
    const/4 v9, 0x1

    .line 239
    if-ne v6, v9, :cond_8

    .line 240
    .line 241
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_a
    const/16 v6, 0xa

    .line 246
    .line 247
    if-ne v0, v6, :cond_b

    .line 248
    .line 249
    iget v9, v15, Lcom/android/server/am/pds/PDSPackageInfo;->mpsm:I

    .line 250
    .line 251
    const/4 v13, 0x1

    .line 252
    if-ne v9, v13, :cond_b

    .line 253
    .line 254
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    :cond_b
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 258
    .line 259
    goto/16 :goto_3

    .line 260
    .line 261
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 262
    .line 263
    goto/16 :goto_2

    .line 264
    .line 265
    :cond_d
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 267
    .line 268
    .line 269
    move-result-wide v4

    .line 270
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    const/4 v9, 0x1

    .line 275
    sub-int/2addr v0, v9

    .line 276
    move-wide v5, v4

    .line 277
    move v4, v0

    .line 278
    const/4 v0, 0x0

    .line 279
    :goto_7
    if-ltz v4, :cond_f

    .line 280
    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 282
    .line 283
    .line 284
    move-result-wide v10

    .line 285
    sub-long/2addr v10, v5

    .line 286
    const-wide/16 v12, 0x32

    .line 287
    .line 288
    cmp-long v0, v10, v12

    .line 289
    .line 290
    if-ltz v0, :cond_e

    .line 291
    .line 292
    const-wide/16 v5, 0xa

    .line 293
    .line 294
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    .line 296
    .line 297
    goto :goto_8

    .line 298
    :catch_0
    move-exception v0

    .line 299
    move-object v5, v0

    .line 300
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 301
    .line 302
    .line 303
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 304
    .line 305
    .line 306
    move-result-wide v5

    .line 307
    :cond_e
    iget-object v10, v1, Lcom/android/server/am/PDSController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 308
    .line 309
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 310
    .line 311
    .line 312
    monitor-enter v10

    .line 313
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Lcom/android/server/am/PDSController$PkgStatusInfo;

    .line 318
    .line 319
    iget-object v11, v1, Lcom/android/server/am/PDSController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 320
    .line 321
    iget-object v12, v0, Lcom/android/server/am/PDSController$PkgStatusInfo;->name:Ljava/lang/String;

    .line 322
    .line 323
    iget v13, v0, Lcom/android/server/am/PDSController$PkgStatusInfo;->userId:I

    .line 324
    .line 325
    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 326
    .line 327
    .line 328
    new-instance v11, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v12, " "

    .line 334
    .line 335
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget v0, v0, Lcom/android/server/am/PDSController$PkgStatusInfo;->uid:I

    .line 339
    .line 340
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 351
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 352
    .line 353
    .line 354
    add-int/lit8 v4, v4, -0x1

    .line 355
    .line 356
    move v0, v9

    .line 357
    goto :goto_7

    .line 358
    :catchall_1
    move-exception v0

    .line 359
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 360
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 361
    .line 362
    .line 363
    throw v0

    .line 364
    :cond_f
    sget-object v4, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 365
    .line 366
    monitor-enter v4

    .line 367
    const/4 v9, 0x0

    .line 368
    :goto_9
    :try_start_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-ge v9, v5, :cond_16

    .line 373
    .line 374
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    check-cast v5, Lcom/android/server/am/PDSController$PkgStatusInfo;

    .line 379
    .line 380
    iget-object v6, v1, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 381
    .line 382
    iget-object v10, v5, Lcom/android/server/am/PDSController$PkgStatusInfo;->name:Ljava/lang/String;

    .line 383
    .line 384
    iget v5, v5, Lcom/android/server/am/PDSController$PkgStatusInfo;->userId:I

    .line 385
    .line 386
    if-eqz v6, :cond_11

    .line 387
    .line 388
    invoke-virtual {v6}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    .line 389
    .line 390
    .line 391
    move-result v11

    .line 392
    if-eqz v11, :cond_11

    .line 393
    .line 394
    iget-object v6, v6, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 395
    .line 396
    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    check-cast v6, Landroid/util/SparseArray;

    .line 401
    .line 402
    if-nez v6, :cond_10

    .line 403
    .line 404
    const/4 v5, 0x0

    .line 405
    goto :goto_a

    .line 406
    :cond_10
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    :goto_a
    check-cast v5, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 411
    .line 412
    goto :goto_b

    .line 413
    :cond_11
    const/4 v5, 0x0

    .line 414
    :goto_b
    if-eqz v5, :cond_15

    .line 415
    .line 416
    iput-object v7, v5, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 417
    .line 418
    iput v8, v5, Lcom/android/server/am/pds/PDSPackageInfo;->curLevel:I

    .line 419
    .line 420
    iget-object v6, v1, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 421
    .line 422
    iget-object v10, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 423
    .line 424
    iget v11, v5, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 425
    .line 426
    iget-object v6, v6, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 427
    .line 428
    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    check-cast v6, Landroid/util/SparseArray;

    .line 433
    .line 434
    if-nez v6, :cond_12

    .line 435
    .line 436
    const/4 v6, 0x0

    .line 437
    goto :goto_c

    .line 438
    :cond_12
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    :goto_c
    if-nez v6, :cond_14

    .line 443
    .line 444
    iget-object v6, v1, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 445
    .line 446
    iget-object v10, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 447
    .line 448
    iget v11, v5, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 449
    .line 450
    iget-object v12, v6, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 451
    .line 452
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v12

    .line 456
    check-cast v12, Landroid/util/SparseArray;

    .line 457
    .line 458
    if-nez v12, :cond_13

    .line 459
    .line 460
    new-instance v12, Landroid/util/SparseArray;

    .line 461
    .line 462
    const/4 v13, 0x2

    .line 463
    invoke-direct {v12, v13}, Landroid/util/SparseArray;-><init>(I)V

    .line 464
    .line 465
    .line 466
    iget-object v6, v6, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 467
    .line 468
    invoke-virtual {v6, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    :cond_13
    invoke-virtual {v12, v11, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    goto :goto_d

    .line 475
    :catchall_2
    move-exception v0

    .line 476
    goto/16 :goto_12

    .line 477
    .line 478
    :cond_14
    :goto_d
    sget-boolean v6, Lcom/android/server/am/PDSController;->DEBUG_ENG:Z

    .line 479
    .line 480
    if-eqz v6, :cond_15

    .line 481
    .line 482
    const-string v6, "PDSController"

    .line 483
    .line 484
    new-instance v10, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .line 488
    .line 489
    const-string v11, "add mPDSRestrictedPackages "

    .line 490
    .line 491
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    iget-object v5, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v5, " policy --"

    .line 500
    .line 501
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    :cond_15
    add-int/lit8 v9, v9, 0x1

    .line 515
    .line 516
    goto/16 :goto_9

    .line 517
    .line 518
    :cond_16
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 519
    if-eqz v0, :cond_1a

    .line 520
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    iget-object v2, v7, Lcom/android/server/am/PDSController$Policy;->name:Ljava/lang/String;

    .line 527
    .line 528
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    const-string v2, " "

    .line 532
    .line 533
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    sget-boolean v2, Lcom/android/server/am/PDSController;->DEBUG_MID:Z

    .line 548
    .line 549
    const-string v3, "]\n"

    .line 550
    .line 551
    const-string v4, "] "

    .line 552
    .line 553
    const-string v5, "["

    .line 554
    .line 555
    if-nez v2, :cond_18

    .line 556
    .line 557
    sget-boolean v2, Lcom/android/server/am/PDSController;->DEBUG_HIGH:Z

    .line 558
    .line 559
    if-eqz v2, :cond_17

    .line 560
    .line 561
    goto :goto_e

    .line 562
    :cond_17
    iget-object v2, v1, Lcom/android/server/am/PDSController;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 563
    .line 564
    if-eqz v2, :cond_1a

    .line 565
    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .line 570
    .line 571
    new-instance v6, Ljava/lang/StringBuilder;

    .line 572
    .line 573
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 577
    .line 578
    .line 579
    move-result-wide v7

    .line 580
    invoke-static {v7, v8}, Lcom/android/server/am/PDSController;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v7

    .line 584
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    const-string v4, "[EXE] "

    .line 598
    .line 599
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    iget-object v0, v1, Lcom/android/server/am/PDSController;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 621
    .line 622
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/HistoryBuffer;->put(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    goto :goto_11

    .line 630
    :cond_18
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 631
    .line 632
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .line 634
    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    .line 636
    .line 637
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 641
    .line 642
    .line 643
    move-result-wide v6

    .line 644
    invoke-static {v6, v7}, Lcom/android/server/am/PDSController;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v6

    .line 648
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    const-string v2, "[EXE] "

    .line 662
    .line 663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    .line 667
    .line 668
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    sget-object v2, Lcom/android/server/am/pds/PDSHistoryBuffer$PDSHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHistoryBuffer;

    .line 685
    .line 686
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    monitor-enter v2

    .line 691
    :try_start_5
    iget-object v1, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->buffer:[Ljava/lang/String;

    .line 692
    .line 693
    iget v3, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->pointer:I

    .line 694
    .line 695
    add-int/lit8 v4, v3, 0x1

    .line 696
    .line 697
    iput v4, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->pointer:I

    .line 698
    .line 699
    aput-object v0, v1, v3

    .line 700
    .line 701
    iget v0, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->size:I

    .line 702
    .line 703
    if-lt v4, v0, :cond_19

    .line 704
    .line 705
    sget-object v0, Lcom/android/server/am/pds/PDSHistoryLog$PDSHistoryLogHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHistoryLog;

    .line 706
    .line 707
    const/4 v1, 0x1

    .line 708
    invoke-virtual {v0, v1}, Lcom/android/server/am/pds/PDSHistoryLog;->saveLogToFile(Z)V

    .line 709
    .line 710
    .line 711
    const/4 v0, 0x0

    .line 712
    iput v0, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->pointer:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 713
    .line 714
    goto :goto_f

    .line 715
    :catchall_3
    move-exception v0

    .line 716
    goto :goto_10

    .line 717
    :cond_19
    :goto_f
    monitor-exit v2

    .line 718
    goto :goto_11

    .line 719
    :goto_10
    monitor-exit v2

    .line 720
    throw v0

    .line 721
    :cond_1a
    :goto_11
    return-void

    .line 722
    :goto_12
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 723
    throw v0

    .line 724
    :goto_13
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 725
    throw v0

    .line 726
    :cond_1b
    :goto_14
    const-string v0, "PDSController"

    .line 727
    .line 728
    const-string/jumbo v1, "policy is not exist or not enabled!"

    .line 729
    .line 730
    .line 731
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .line 733
    .line 734
    return-void
.end method

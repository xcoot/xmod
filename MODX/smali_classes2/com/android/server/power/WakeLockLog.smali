.class public final Lcom/android/server/power/WakeLockLog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final LEVEL_TO_STRING:[Ljava/lang/String;

.field public static final REDUCED_TAG_PREFIXES:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

.field public final mInjector:Lcom/android/server/power/WakeLockLog$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mLog:Lcom/android/server/power/WakeLockLog$TheLog;

.field public final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v6, "doze"

    .line 2
    .line 3
    const-string v7, "draw"

    .line 4
    .line 5
    const-string/jumbo v0, "override"

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "partial"

    .line 9
    .line 10
    .line 11
    const-string v2, "full"

    .line 12
    .line 13
    const-string/jumbo v3, "screen-dim"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v4, "screen-bright"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v5, "prox"

    .line 20
    .line 21
    .line 22
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "*gms_scheduler*/"

    .line 29
    .line 30
    const-string v1, "IntentOp:"

    .line 31
    .line 32
    const-string v2, "*job*/"

    .line 33
    .line 34
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 41
    .line 42
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;-><init>(Lcom/android/server/power/WakeLockLog$Injector;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 19
    .line 20
    new-instance v1, Lcom/android/server/power/WakeLockLog$TheLog$1;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/android/server/power/WakeLockLog$TheLog$1;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/android/server/power/WakeLockLog$TheLog;

    .line 26
    .line 27
    invoke-direct {v2, p1, v1, v0}, Lcom/android/server/power/WakeLockLog$TheLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$TheLog$1;Lcom/android/server/power/WakeLockLog$TagDatabase;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 31
    .line 32
    sget-object p1, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/server/power/WakeLockLog;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Z)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    const-string v1, "Wake Lock Log"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    move v4, v3

    .line 17
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 18
    .line 19
    iget-object v5, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    .line 20
    .line 21
    check-cast v5, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-ge v3, v5, :cond_0

    .line 28
    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 32
    .line 33
    iget-object v5, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    .line 34
    .line 35
    check-cast v5, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 42
    .line 43
    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v5, v1, v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->updatePackageName(Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V

    .line 50
    .line 51
    .line 52
    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    .line 53
    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v8, "  "

    .line 57
    .line 58
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_0
    new-instance v3, Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    new-instance v6, Lcom/android/server/power/WakeLockLog$TheLog$2;

    .line 92
    .line 93
    invoke-direct {v6, v5, v3}, Lcom/android/server/power/WakeLockLog$TheLog$2;-><init>(Lcom/android/server/power/WakeLockLog$TheLog;Lcom/android/server/power/WakeLockLog$LogEntry;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {v6}, Lcom/android/server/power/WakeLockLog$TheLog$2;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    invoke-virtual {v6}, Lcom/android/server/power/WakeLockLog$TheLog$2;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 107
    .line 108
    iget v5, v3, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 109
    .line 110
    if-nez v5, :cond_1

    .line 111
    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v3, v1, v5}, Lcom/android/server/power/WakeLockLog$LogEntry;->updatePackageName(Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V

    .line 124
    .line 125
    .line 126
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    .line 127
    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v8, "  "

    .line 131
    .line 132
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v5}, Lcom/android/server/power/WakeLockLog$LogEntry;->toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    const-string v1, "  -"

    .line 151
    .line 152
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v3, "  Events: "

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v3, ", Time-Resets: "

    .line 169
    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v2, "  Buffer, Bytes used: "

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 194
    .line 195
    iget-object v3, v2, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    .line 196
    .line 197
    array-length v4, v3

    .line 198
    iget v5, v2, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    .line 199
    .line 200
    iget v2, v2, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    .line 201
    .line 202
    if-le v5, v2, :cond_3

    .line 203
    .line 204
    array-length v3, v3

    .line 205
    sub-int/2addr v5, v2

    .line 206
    sub-int/2addr v3, v5

    .line 207
    goto :goto_2

    .line 208
    :cond_3
    if-ge v5, v2, :cond_4

    .line 209
    .line 210
    sub-int v3, v2, v5

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_4
    array-length v3, v3

    .line 214
    :goto_2
    sub-int/2addr v4, v3

    .line 215
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    if-eqz p2, :cond_5

    .line 226
    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v1, "  "

    .line 233
    .line 234
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 238
    .line 239
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_5
    monitor-exit v0

    .line 250
    goto :goto_4

    .line 251
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 253
    :catch_0
    move-exception p0

    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v0, "Exception dumping wake-lock log: "

    .line 257
    .line 258
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :goto_4
    return-void
.end method

.method public final onWakeLockEvent(IILjava/lang/String;IJ)V
    .locals 8

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const-string p0, "PowerManagerService.WLLog"

    .line 4
    .line 5
    const-string p1, "Insufficient data to log wakelock [tag: "

    .line 6
    .line 7
    const-string p5, ", ownerUid: "

    .line 8
    .line 9
    const-string p6, ", flags: 0x"

    .line 10
    .line 11
    invoke-static {p2, p1, p3, p5, p6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-wide/16 v0, -0x1

    .line 31
    .line 32
    cmp-long v0, p5, v0

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object p5, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    .line 37
    .line 38
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide p5

    .line 45
    :cond_1
    move-wide v1, p5

    .line 46
    const/4 p5, 0x1

    .line 47
    const/4 p6, 0x3

    .line 48
    const/4 v0, 0x0

    .line 49
    if-ne p1, p5, :cond_d

    .line 50
    .line 51
    const v3, 0xffff

    .line 52
    .line 53
    .line 54
    and-int/2addr v3, p4

    .line 55
    if-eq v3, p5, :cond_8

    .line 56
    .line 57
    const/4 v4, 0x6

    .line 58
    if-eq v3, v4, :cond_7

    .line 59
    .line 60
    const/16 v5, 0xa

    .line 61
    .line 62
    if-eq v3, v5, :cond_6

    .line 63
    .line 64
    const/16 v5, 0x1a

    .line 65
    .line 66
    if-eq v3, v5, :cond_5

    .line 67
    .line 68
    const/16 v5, 0x20

    .line 69
    .line 70
    if-eq v3, v5, :cond_4

    .line 71
    .line 72
    const/16 v5, 0x40

    .line 73
    .line 74
    if-eq v3, v5, :cond_9

    .line 75
    .line 76
    const/16 v4, 0x80

    .line 77
    .line 78
    if-eq v3, v4, :cond_3

    .line 79
    .line 80
    const/16 v4, 0x100

    .line 81
    .line 82
    if-eq v3, v4, :cond_2

    .line 83
    .line 84
    const-string v3, "Unsupported lock level for logging, flags: "

    .line 85
    .line 86
    const-string v4, "PowerManagerService.WLLog"

    .line 87
    .line 88
    invoke-static {p4, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    move v4, v0

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/4 v4, 0x7

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    const/4 v4, 0x5

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    const/4 v4, 0x2

    .line 98
    goto :goto_0

    .line 99
    :cond_6
    const/4 v4, 0x4

    .line 100
    goto :goto_0

    .line 101
    :cond_7
    move v4, p6

    .line 102
    goto :goto_0

    .line 103
    :cond_8
    move v4, p5

    .line 104
    :cond_9
    :goto_0
    const/high16 v3, 0x10000000

    .line 105
    .line 106
    and-int/2addr v3, p4

    .line 107
    if-eqz v3, :cond_a

    .line 108
    .line 109
    or-int/lit8 v4, v4, 0x10

    .line 110
    .line 111
    :cond_a
    const/high16 v3, 0x20000000

    .line 112
    .line 113
    and-int/2addr v3, p4

    .line 114
    if-eqz v3, :cond_b

    .line 115
    .line 116
    or-int/lit8 v4, v4, 0x8

    .line 117
    .line 118
    :cond_b
    const/high16 v3, -0x80000000

    .line 119
    .line 120
    and-int/2addr p4, v3

    .line 121
    if-eqz p4, :cond_c

    .line 122
    .line 123
    or-int/lit8 v4, v4, 0x20

    .line 124
    .line 125
    :cond_c
    move v5, v4

    .line 126
    goto :goto_1

    .line 127
    :cond_d
    move v5, v0

    .line 128
    :goto_1
    sget-object p4, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    .line 129
    .line 130
    move v3, v0

    .line 131
    :goto_2
    if-ge v3, p6, :cond_f

    .line 132
    .line 133
    aget-object v4, p4, v3

    .line 134
    .line 135
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-eqz v6, :cond_e

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_f
    const/4 v4, 0x0

    .line 146
    :goto_3
    if-eqz v4, :cond_15

    .line 147
    .line 148
    new-instance p4, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 154
    .line 155
    .line 156
    move-result p6

    .line 157
    invoke-virtual {p4, p3, v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p6, "/"

    .line 161
    .line 162
    invoke-virtual {p3, p6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result p6

    .line 166
    const-string v3, "."

    .line 167
    .line 168
    invoke-virtual {p3, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-static {p6, v3}, Ljava/lang/Math;->max(II)I

    .line 173
    .line 174
    .line 175
    move-result p6

    .line 176
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    move v4, p5

    .line 181
    :goto_4
    if-ge v3, p6, :cond_14

    .line 182
    .line 183
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    const/16 v7, 0x2e

    .line 188
    .line 189
    if-eq v6, v7, :cond_11

    .line 190
    .line 191
    const/16 v7, 0x2f

    .line 192
    .line 193
    if-ne v6, v7, :cond_10

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_10
    move v7, v0

    .line 197
    goto :goto_6

    .line 198
    :cond_11
    :goto_5
    move v7, p5

    .line 199
    :goto_6
    if-nez v7, :cond_12

    .line 200
    .line 201
    if-eqz v4, :cond_13

    .line 202
    .line 203
    :cond_12
    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 207
    .line 208
    move v4, v7

    .line 209
    goto :goto_4

    .line 210
    :cond_14
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p3

    .line 221
    :cond_15
    iget-object p4, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    .line 222
    .line 223
    monitor-enter p4

    .line 224
    :try_start_0
    iget-object p5, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 225
    .line 226
    invoke-virtual {p5, p2, p3}, Lcom/android/server/power/WakeLockLog$TagDatabase;->findOrCreateTag(ILjava/lang/String;)Lcom/android/server/power/WakeLockLog$TagData;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 231
    .line 232
    new-instance p2, Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 233
    .line 234
    move-object v0, p2

    .line 235
    move v3, p1

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, p2}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    .line 240
    .line 241
    .line 242
    monitor-exit p4

    .line 243
    return-void

    .line 244
    :catchall_0
    move-exception p0

    .line 245
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    throw p0
.end method

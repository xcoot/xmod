.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ORIG_ENUMS:[I

.field public static final PROTO_ENUMS:[I


# instance fields
.field public curProcStateSeq:J

.field public volatile hasInternetPermission:Z

.field public lastNetworkUpdatedProcStateSeq:J

.field public mCurAllowList:Z

.field public mCurCapability:I

.field public mCurProcState:I

.field public mEphemeral:Z

.field public mForegroundServices:Z

.field public mIdle:Z

.field public mLastBackgroundTime:J

.field public mLastIdleTimeIfStillIdle:J

.field public mLastReportedChange:I

.field public mProcAdjChanged:Z

.field public final mProcRecords:Landroid/util/ArraySet;

.field public mRealLastIdleTime:J

.field public mSetAllowList:Z

.field public mSetCapability:I

.field public mSetIdle:Z

.field public mSetProcState:I

.field public final mUid:I

.field public mUidIsFrozen:Z

.field public final networkStateLock:Ljava/lang/Object;

.field public final pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

.field public volatile procStateSeqWaitingForNetwork:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    .line 8
    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    .line 15
    .line 16
    return-void

    .line 17
    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        -0x80000000
    .end array-data

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x14

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 7
    .line 8
    new-instance v0, Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/am/UidRecord;->pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 28
    .line 29
    iput p1, p0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 33
    .line 34
    const/16 p1, 0x13

    .line 35
    .line 36
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 40
    .line 41
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 18
    .line 19
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 20
    .line 21
    if-eq p1, v2, :cond_0

    .line 22
    .line 23
    iget-boolean v2, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v1
.end method

.method public final forEachProcess(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const-string v1, "UidRecord{"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x20

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v2, p0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 26
    .line 27
    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 34
    .line 35
    sget v2, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 36
    .line 37
    invoke-static {v1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    const-string v1, " ephemeral"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    const-string v1, " fgServices"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    const-string v1, " allowlist"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 72
    .line 73
    const-wide/16 v3, 0x0

    .line 74
    .line 75
    cmp-long v1, v1, v3

    .line 76
    .line 77
    if-lez v1, :cond_3

    .line 78
    .line 79
    const-string v1, " bg:"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 89
    .line 90
    sub-long/2addr v1, v3

    .line 91
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    const-string v1, " idle"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    :cond_4
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    if-eqz v1, :cond_11

    .line 107
    .line 108
    const-string v1, " change:"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    and-int/2addr v1, v3

    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    const-string/jumbo v1, "gone"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    move v1, v3

    .line 126
    goto :goto_0

    .line 127
    :cond_5
    move v1, v2

    .line 128
    :goto_0
    iget v4, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 129
    .line 130
    and-int/lit8 v4, v4, 0x2

    .line 131
    .line 132
    const-string/jumbo v5, "|"

    .line 133
    .line 134
    .line 135
    if-eqz v4, :cond_7

    .line 136
    .line 137
    if-eqz v1, :cond_6

    .line 138
    .line 139
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    :cond_6
    const-string/jumbo v1, "idle"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    move v1, v3

    .line 149
    :cond_7
    iget v4, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 150
    .line 151
    and-int/lit8 v4, v4, 0x4

    .line 152
    .line 153
    if-eqz v4, :cond_9

    .line 154
    .line 155
    if-eqz v1, :cond_8

    .line 156
    .line 157
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    :cond_8
    const-string v1, "active"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    move v1, v3

    .line 166
    :cond_9
    iget v4, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 167
    .line 168
    and-int/lit8 v4, v4, 0x8

    .line 169
    .line 170
    if-eqz v4, :cond_b

    .line 171
    .line 172
    if-eqz v1, :cond_a

    .line 173
    .line 174
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    :cond_a
    const-string/jumbo v1, "cached"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_b
    move v3, v1

    .line 185
    :goto_1
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 186
    .line 187
    and-int/lit8 v1, v1, 0x10

    .line 188
    .line 189
    if-eqz v1, :cond_d

    .line 190
    .line 191
    if-eqz v3, :cond_c

    .line 192
    .line 193
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    :cond_c
    const-string/jumbo v1, "uncached"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    :cond_d
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 203
    .line 204
    const/high16 v4, -0x80000000

    .line 205
    .line 206
    and-int/2addr v1, v4

    .line 207
    if-eqz v1, :cond_f

    .line 208
    .line 209
    if-eqz v3, :cond_e

    .line 210
    .line 211
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    :cond_e
    const-string/jumbo v1, "procstate"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    :cond_f
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 221
    .line 222
    and-int/lit8 v1, v1, 0x40

    .line 223
    .line 224
    if-eqz v1, :cond_11

    .line 225
    .line 226
    if-eqz v3, :cond_10

    .line 227
    .line 228
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    :cond_10
    const-string/jumbo v1, "procadj"

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    :cond_11
    const-string v1, " procs:"

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v1, " seq("

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    .line 251
    .line 252
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v1, ","

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    .line 261
    .line 262
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v1, ")}"

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v1, " caps="

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 276
    .line 277
    invoke-static {v0, p0}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    return-object p0
.end method

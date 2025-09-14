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

    .line 4
    fill-array-data v1, :array_0

    .line 7
    sput-object v1, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    .line 9
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_1

    .line 14
    sput-object v0, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

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

    .line 4
    const/16 v0, 0x14

    .line 6
    iput v0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 8
    new-instance v0, Landroid/util/ArraySet;

    .line 10
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 22
    new-instance v0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/server/am/UidRecord;->pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 29
    iput p1, p0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 34
    const/16 p1, 0x13

    .line 36
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 38
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 41
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 43
    return-void
.end method


# virtual methods
.method public final areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v2, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 13
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 19
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 21
    if-eq p1, v2, :cond_0

    .line 23
    iget-boolean v2, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 25
    if-nez v2, :cond_0

    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_0
    add-int/lit8 v0, v0, -0x1

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

    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 19
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 22
    add-int/lit8 v0, v0, -0x1

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

    .line 3
    const-string v1, "UidRecord{"

    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const/16 v1, 0x20

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    iget v2, p0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 27
    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 35
    sget v2, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    .line 37
    invoke-static {v1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    .line 46
    if-eqz v1, :cond_0

    .line 48
    const-string v1, " ephemeral"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 55
    if-eqz v1, :cond_1

    .line 57
    const-string v1, " fgServices"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 64
    if-eqz v1, :cond_2

    .line 66
    const-string v1, " allowlist"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_2
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 73
    const-wide/16 v3, 0x0

    .line 75
    cmp-long v1, v1, v3

    .line 77
    if-lez v1, :cond_3

    .line 79
    const-string v1, " bg:"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 87
    move-result-wide v1

    .line 88
    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 90
    sub-long/2addr v1, v3

    .line 91
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 94
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 96
    if-eqz v1, :cond_4

    .line 98
    const-string v1, " idle"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_4
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 105
    const/4 v2, 0x0

    .line 106
    if-eqz v1, :cond_11

    .line 108
    const-string v1, " change:"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 115
    const/4 v3, 0x1

    .line 116
    and-int/2addr v1, v3

    .line 117
    if-eqz v1, :cond_5

    .line 119
    const-string/jumbo v1, "gone"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 130
    and-int/lit8 v4, v4, 0x2

    .line 132
    const-string/jumbo v5, "|"

    .line 135
    if-eqz v4, :cond_7

    .line 137
    if-eqz v1, :cond_6

    .line 139
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_6
    const-string/jumbo v1, "idle"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    move v1, v3

    .line 149
    :cond_7
    iget v4, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 151
    and-int/lit8 v4, v4, 0x4

    .line 153
    if-eqz v4, :cond_9

    .line 155
    if-eqz v1, :cond_8

    .line 157
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_8
    const-string v1, "active"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    move v1, v3

    .line 166
    :cond_9
    iget v4, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 168
    and-int/lit8 v4, v4, 0x8

    .line 170
    if-eqz v4, :cond_b

    .line 172
    if-eqz v1, :cond_a

    .line 174
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_a
    const-string/jumbo v1, "cached"

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    goto :goto_1

    .line 184
    :cond_b
    move v3, v1

    .line 185
    :goto_1
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 187
    and-int/lit8 v1, v1, 0x10

    .line 189
    if-eqz v1, :cond_d

    .line 191
    if-eqz v3, :cond_c

    .line 193
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_c
    const-string/jumbo v1, "uncached"

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_d
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 204
    const/high16 v4, -0x80000000

    .line 206
    and-int/2addr v1, v4

    .line 207
    if-eqz v1, :cond_f

    .line 209
    if-eqz v3, :cond_e

    .line 211
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_e
    const-string/jumbo v1, "procstate"

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_f
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 222
    and-int/lit8 v1, v1, 0x40

    .line 224
    if-eqz v1, :cond_11

    .line 226
    if-eqz v3, :cond_10

    .line 228
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_10
    const-string/jumbo v1, "procadj"

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_11
    const-string v1, " procs:"

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, " seq("

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    .line 252
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, ","

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    .line 262
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, ")}"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, " caps="

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget p0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 277
    invoke-static {v0, p0}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/lang/StringBuilder;I)V

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object p0

    .line 284
    return-object p0
.end method

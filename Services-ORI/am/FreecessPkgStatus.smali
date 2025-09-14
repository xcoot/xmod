.class public final Lcom/android/server/am/FreecessPkgStatus;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

.field public freezedState:I

.field public freezedType:I

.field public isDoingGC:I

.field public isFreezedByCalm:Z

.field public isInAllowList:Z

.field public isOlafAllowList:Z

.field public isPendingUFZ:Z

.field public latestProcState:I

.field public monitorPacketFlag:Z

.field public final name:Ljava/lang/String;

.field public protectionElapsedRealtime:Ljava/lang/Long;

.field public restrictNetworkFlag:Z

.field public serviceTypes:I

.field public sharedUidName:Ljava/lang/String;

.field public final targetSdkVersion:I

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iput-object v2, p0, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    iput v2, p0, Lcom/android/server/am/FreecessPkgStatus;->latestProcState:I

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    .line 16
    .line 17
    iput p2, p0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 18
    .line 19
    iput p3, p0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    .line 20
    .line 21
    iput p4, p0, Lcom/android/server/am/FreecessPkgStatus;->targetSdkVersion:I

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput-object p2, p0, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    iput-boolean p3, p0, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 28
    .line 29
    iput-boolean p3, p0, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 30
    .line 31
    iput-boolean p3, p0, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    .line 32
    .line 33
    const/4 p4, 0x1

    .line 34
    iput p4, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 35
    .line 36
    iput p3, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 37
    .line 38
    iput p3, p0, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 39
    .line 40
    iput p3, p0, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    .line 41
    .line 42
    new-instance p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 43
    .line 44
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    array-length v2, v2

    .line 52
    new-array v2, v2, [I

    .line 53
    .line 54
    iput-object v2, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreezeCounts:[I

    .line 55
    .line 56
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    array-length v2, v2

    .line 61
    new-array v2, v2, [I

    .line 62
    .line 63
    iput-object v2, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeCounts:[I

    .line 64
    .line 65
    iput-object p0, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mFreecessParent:Lcom/android/server/am/FreecessPkgStatus;

    .line 66
    .line 67
    iput-boolean p3, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    .line 68
    .line 69
    iput-boolean p3, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    .line 70
    .line 71
    iput-boolean p3, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    .line 72
    .line 73
    iput-boolean p3, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    .line 74
    .line 75
    iput-wide v0, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->freezedTime:J

    .line 76
    .line 77
    iput-wide v0, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedTime:J

    .line 78
    .line 79
    iput-object p2, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->unfreezedReason:Ljava/lang/String;

    .line 80
    .line 81
    sget-boolean p2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 82
    .line 83
    if-eqz p2, :cond_0

    .line 84
    .line 85
    const-string/jumbo p2, "initRealtimeDetection "

    .line 86
    .line 87
    .line 88
    const-string v0, " rate:12"

    .line 89
    .line 90
    const-string v1, "MARsFreezeStateRecord"

    .line 91
    .line 92
    invoke-static {p2, p1, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    const-wide/16 p1, 0x200

    .line 96
    .line 97
    iput-wide p1, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mAvailableTokens:J

    .line 98
    .line 99
    iput p3, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mDetectionVer:I

    .line 100
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 102
    .line 103
    .line 104
    move-result-wide p1

    .line 105
    iput-wide p1, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mTokensUpdateTime:J

    .line 106
    .line 107
    iput-wide p1, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->initialStateTime:J

    .line 108
    .line 109
    iget-object p1, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    .line 110
    .line 111
    if-eqz p1, :cond_1

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    new-instance p1, Landroid/util/ArraySet;

    .line 118
    .line 119
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object p1, p4, Lcom/android/server/am/mars/MARsFreezeStateRecord;->mUnfreezeAbuseDetections:Landroid/util/ArraySet;

    .line 123
    .line 124
    :goto_0
    iput-object p4, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    .line 125
    .line 126
    return-void
.end method


# virtual methods
.method public final updateProtectionTime(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    add-long/2addr v1, p1

    .line 9
    iget-object p1, p0, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    cmp-long p1, v1, p1

    .line 16
    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/server/am/FreecessPkgStatus;->protectionElapsedRealtime:Ljava/lang/Long;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

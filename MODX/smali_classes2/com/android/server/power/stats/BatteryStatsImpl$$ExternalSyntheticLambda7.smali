.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/util/SparseLongArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;JJIZLandroid/util/SparseLongArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$1:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$2:J

    .line 9
    .line 10
    iput p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$3:I

    .line 11
    .line 12
    iput-boolean p7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$4:Z

    .line 13
    .line 14
    iput-object p8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$5:Landroid/util/SparseLongArray;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$1:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$2:J

    .line 6
    .line 7
    iget v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$3:I

    .line 8
    .line 9
    iget-boolean v8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$4:Z

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$5:Landroid/util/SparseLongArray;

    .line 12
    .line 13
    check-cast p2, [J

    .line 14
    .line 15
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    aget-wide v9, p2, v0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    aget-wide v11, p2, v0

    .line 23
    .line 24
    invoke-virtual {v6, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Landroid/os/Process;->isIsolated(I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    .line 36
    .line 37
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->exists(I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v0, v6

    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-wide v0, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 54
    .line 55
    add-long/2addr v0, v9

    .line 56
    iput-wide v0, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 57
    .line 58
    iget-wide v0, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 59
    .line 60
    add-long/2addr v0, v11

    .line 61
    iput-wide v0, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 62
    .line 63
    if-lez v7, :cond_2

    .line 64
    .line 65
    const-wide/16 v0, 0x32

    .line 66
    .line 67
    mul-long/2addr v9, v0

    .line 68
    const-wide/16 v2, 0x64

    .line 69
    .line 70
    div-long/2addr v9, v2

    .line 71
    mul-long/2addr v11, v0

    .line 72
    div-long/2addr v11, v2

    .line 73
    :cond_2
    iget-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 74
    .line 75
    invoke-virtual {p2, v9, v10, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 79
    .line 80
    invoke-virtual {p2, v11, v12, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    .line 81
    .line 82
    .line 83
    if-eqz p0, :cond_3

    .line 84
    .line 85
    iget p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    .line 86
    .line 87
    add-long/2addr v9, v11

    .line 88
    invoke-virtual {p0, p1, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_0
    return-void
.end method

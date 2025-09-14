.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$1:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-wide v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$1:J

    .line 4
    .line 5
    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda1;->f$2:J

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Landroid/os/Process;->isIsolated(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->exists(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v1, p0

    .line 34
    move-wide v2, v6

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-ne p0, p1, :cond_2

    .line 40
    .line 41
    sget-object p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/server/power/stats/BatteryStatsImpl$BinderCallStats;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object p0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    .line 58
    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;

    .line 67
    .line 68
    if-eqz p0, :cond_4

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$ChildUid;->cpuActiveCounter:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 77
    .line 78
    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide p0

    .line 82
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {p2, p0, p1, v6, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mincrement(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;JJ)V

    .line 87
    .line 88
    .line 89
    :cond_4
    :goto_0
    return-void
.end method

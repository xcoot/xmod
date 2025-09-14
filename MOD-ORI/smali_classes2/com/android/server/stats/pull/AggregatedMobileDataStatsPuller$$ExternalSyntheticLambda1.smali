.class public final synthetic Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/android/server/selinux/RateLimiter;->mClock:Lcom/android/internal/os/Clock;

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, v2, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v4, v2, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iput-object v3, v2, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->updateNetworkStats(Landroid/app/usage/NetworkStatsManager;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v2, "AggregatedMobileDataStatsPuller"

    .line 45
    .line 46
    const-string/jumbo v3, "noteUidProcessStateLocked() can not get mNetworkStatsManager"

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object v0, v0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->mUidPreviousState:Landroid/util/SparseIntArray;

    .line 53
    .line 54
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

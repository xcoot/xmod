.class public final Lcom/android/server/credentials/metrics/CandidatePhaseMetric;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCandidateUid:I

.field public mFrameworkException:Ljava/lang/String;

.field public mHasException:Z

.field public mIsPrimary:Z

.field public mProviderQueryStatus:I

.field public mQueryFinishTimeNanoseconds:J

.field public mQueryReturned:Z

.field public mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mServiceBeganTimeNanoseconds:J

.field public final mSessionIdProvider:I

.field public mStartQueryTimeNanoseconds:J


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    .line 10
    const-wide/16 v2, -0x1

    .line 12
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    .line 14
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J

    .line 16
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    .line 18
    iput v1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mProviderQueryStatus:I

    .line 20
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mHasException:Z

    .line 22
    const-string v1, ""

    .line 24
    iput-object v1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mFrameworkException:Ljava/lang/String;

    .line 26
    new-instance v1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 28
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 31
    move-result-object v2

    .line 32
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 35
    move-result-object v3

    .line 36
    invoke-direct {v1, v2, v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 39
    iput-object v1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 41
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mIsPrimary:Z

    .line 43
    iput p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mSessionIdProvider:I

    .line 45
    return-void
.end method

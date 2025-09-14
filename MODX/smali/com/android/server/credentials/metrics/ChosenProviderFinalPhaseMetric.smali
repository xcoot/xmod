.class public final Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mChosenProviderStatus:I

.field public mChosenUid:I

.field public mFallbackUiUid:I

.field public mFinalFinishTimeNanoseconds:J

.field public mFrameworkException:Ljava/lang/String;

.field public mHasException:Z

.field public mIsPrimary:Z

.field public mOemUiUid:I

.field public mOemUiUsageStatus:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public mQueryEndTimeNanoseconds:J

.field public mQueryStartTimeNanoseconds:J

.field public mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mServiceBeganTimeNanoseconds:J

.field public final mSessionIdCaller:I

.field public final mSessionIdProvider:I

.field public mUiCallEndTimeNanoseconds:J

.field public mUiCallStartTimeNanoseconds:J

.field public mUiReturned:Z


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z

    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenUid:I

    .line 10
    const-wide/16 v2, -0x1

    .line 12
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mServiceBeganTimeNanoseconds:J

    .line 14
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryStartTimeNanoseconds:J

    .line 16
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryEndTimeNanoseconds:J

    .line 18
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallStartTimeNanoseconds:J

    .line 20
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallEndTimeNanoseconds:J

    .line 22
    iput-wide v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFinalFinishTimeNanoseconds:J

    .line 24
    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUid:I

    .line 26
    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFallbackUiUid:I

    .line 28
    sget-object v2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->UNKNOWN:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 30
    iput-object v2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUsageStatus:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 32
    iput v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I

    .line 34
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mHasException:Z

    .line 36
    const-string v1, ""

    .line 38
    iput-object v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFrameworkException:Ljava/lang/String;

    .line 40
    new-instance v1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 42
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 45
    move-result-object v2

    .line 46
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 49
    move-result-object v3

    .line 50
    invoke-direct {v1, v2, v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 53
    iput-object v1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 55
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mIsPrimary:Z

    .line 57
    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mSessionIdCaller:I

    .line 59
    iput p2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mSessionIdProvider:I

    .line 61
    return-void
.end method


# virtual methods
.method public final getTimestampFromReferenceStartMicroseconds(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mServiceBeganTimeNanoseconds:J

    .line 3
    cmp-long p0, p1, v0

    .line 5
    if-gez p0, :cond_0

    .line 7
    const-string p0, "ChosenFinalPhaseMetric"

    .line 9
    const-string p1, "The timestamp is before service started, falling back to default int"

    .line 11
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 p0, -0x1

    .line 15
    return p0

    .line 16
    :cond_0
    sub-long/2addr p1, v0

    .line 17
    const-wide/16 v0, 0x3e8

    .line 19
    div-long/2addr p1, v0

    .line 20
    long-to-int p0, p1

    .line 21
    return p0
.end method

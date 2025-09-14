.class public final Lcom/android/server/biometrics/sensors/face/UsageStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAcceptCount:I

.field public mAcceptLatency:J

.field public mAuthAttemptCount:I

.field public mAuthenticationEvents:Ljava/util/ArrayDeque;

.field public mContext:Landroid/content/Context;

.field public mErrorCount:I

.field public mErrorFrequencyMap:Landroid/util/SparseIntArray;

.field public mErrorLatency:J

.field public mErrorLatencyMap:Landroid/util/SparseLongArray;

.field public mRejectCount:I

.field public mRejectLatency:J


# virtual methods
.method public final addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthAttemptCount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthAttemptCount:I

    .line 7
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x64

    .line 15
    if-lt v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAuthenticationEvents:Ljava/util/ArrayDeque;

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 27
    iget-boolean v0, p1, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mAuthenticated:Z

    .line 29
    iget-wide v1, p1, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mLatency:J

    .line 31
    if-eqz v0, :cond_1

    .line 33
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 37
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptCount:I

    .line 39
    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    .line 41
    add-long/2addr v3, v1

    .line 42
    iput-wide v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mAcceptLatency:J

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget p1, p1, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;->mError:I

    .line 47
    if-nez p1, :cond_2

    .line 49
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 53
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectCount:I

    .line 55
    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    .line 57
    add-long/2addr v3, v1

    .line 58
    iput-wide v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mRejectLatency:J

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:I

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 65
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorCount:I

    .line 67
    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:J

    .line 69
    add-long/2addr v3, v1

    .line 70
    iput-wide v3, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatency:J

    .line 72
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorFrequencyMap:Landroid/util/SparseIntArray;

    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 78
    move-result v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 81
    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/UsageStats;->mErrorLatencyMap:Landroid/util/SparseLongArray;

    .line 86
    const-wide/16 v3, 0x0

    .line 88
    invoke-virtual {p0, p1, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 91
    move-result-wide v3

    .line 92
    add-long/2addr v3, v1

    .line 93
    invoke-virtual {p0, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 96
    :goto_0
    return-void
.end method

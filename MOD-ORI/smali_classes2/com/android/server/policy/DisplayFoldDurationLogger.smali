.class public final Lcom/android/server/policy/DisplayFoldDurationLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mLastChanged:Ljava/lang/Long;

.field public final mLogger:Lcom/android/internal/logging/MetricsLogger;

.field public volatile mScreenState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 9
    .line 10
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final log()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLastChanged:Ljava/lang/Long;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget v1, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mScreenState:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_3

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    const v1, -0x7fffffff

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    const/high16 v1, -0x80000000

    .line 25
    .line 26
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldDurationLogger;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 27
    .line 28
    new-instance v2, Landroid/metrics/LogMaker;

    .line 29
    .line 30
    const/16 v3, 0x63a

    .line 31
    .line 32
    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    sub-long/2addr v2, v4

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

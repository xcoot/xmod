.class public abstract Lcom/samsung/android/server/audio/FrequentWorker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCachedValue:Ljava/lang/Object;

.field public mLastProcessTime:J

.field public mPeriodMs:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mLastProcessTime:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract func()Ljava/lang/Object;
.end method

.method public final runOrSkip()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mLastProcessTime:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    iget v4, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    .line 10
    .line 11
    int-to-long v4, v4

    .line 12
    cmp-long v2, v2, v4

    .line 13
    .line 14
    if-gez v2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    iput-wide v0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mLastProcessTime:J

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/FrequentWorker;->func()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    .line 26
    .line 27
    return-object v0
.end method

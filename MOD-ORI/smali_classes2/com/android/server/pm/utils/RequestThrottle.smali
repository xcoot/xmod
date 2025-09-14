.class public final Lcom/android/server/pm/utils/RequestThrottle;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBackoffBase:I

.field public final mBlock:Ljava/util/function/Supplier;

.field public final mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mFirstDelay:I

.field public final mHandler:Landroid/os/Handler;

.field public final mLastCommitted:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mMaxAttempts:I

.field public final mRunnable:Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda7;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastCommitted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/pm/utils/RequestThrottle;->mBlock:Ljava/util/function/Supplier;

    .line 30
    .line 31
    const/4 p1, 0x5

    .line 32
    iput p1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mMaxAttempts:I

    .line 33
    .line 34
    const/16 p1, 0x3e8

    .line 35
    .line 36
    iput p1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mFirstDelay:I

    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    iput p1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mBackoffBase:I

    .line 40
    .line 41
    new-instance p1, Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/utils/RequestThrottle;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mRunnable:Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final runInternal()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastCommitted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mBlock:Ljava/util/function/Supplier;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastCommitted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mMaxAttempts:I

    .line 50
    .line 51
    if-ge v0, v1, :cond_2

    .line 52
    .line 53
    iget v1, p0, Lcom/android/server/pm/utils/RequestThrottle;->mFirstDelay:I

    .line 54
    .line 55
    int-to-double v1, v1

    .line 56
    iget v4, p0, Lcom/android/server/pm/utils/RequestThrottle;->mBackoffBase:I

    .line 57
    .line 58
    int-to-double v4, v4

    .line 59
    int-to-double v6, v0

    .line 60
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    mul-double/2addr v4, v1

    .line 65
    double-to-long v0, v4

    .line 66
    iget-object v2, p0, Lcom/android/server/pm/utils/RequestThrottle;->mRunnable:Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mCurrentRetry:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    .line 76
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return v3
.end method

.method public final schedule()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mRunnable:Lcom/android/server/pm/utils/RequestThrottle$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/utils/RequestThrottle;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

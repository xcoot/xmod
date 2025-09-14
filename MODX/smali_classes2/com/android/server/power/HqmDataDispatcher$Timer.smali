.class public final Lcom/android/server/power/HqmDataDispatcher$Timer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

.field public startTimeMillis:J


# direct methods
.method public constructor <init>(Lcom/android/server/power/HqmDataDispatcher$Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$Timer;->mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/HqmDataDispatcher$Timer;->mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    .line 13
    .line 14
    return-void
.end method

.method public final stop()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/power/HqmDataDispatcher$Timer;->mClock:Lcom/android/server/power/HqmDataDispatcher$Clock;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Lcom/android/server/power/HqmDataDispatcher$Timer;->startTimeMillis:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    long-to-double v0, v0

    .line 16
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    div-double/2addr v0, v2

    .line 22
    double-to-float p0, v0

    .line 23
    return p0
.end method

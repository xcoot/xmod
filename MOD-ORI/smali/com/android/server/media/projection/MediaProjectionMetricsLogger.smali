.class public final Lcom/android/server/media/projection/MediaProjectionMetricsLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sSingleton:Lcom/android/server/media/projection/MediaProjectionMetricsLogger;


# instance fields
.field public final mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

.field public mPreviousState:I

.field public final mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

.field public final mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/FrameworkStatsLogWrapper;Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;Lcom/android/server/media/projection/MediaProjectionTimestampStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousState:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mSessionIdGenerator:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mTimestampStore:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public contentToRecordToTargetType(I)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eq p1, p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x2

    .line 9
    :cond_1
    :goto_0
    return p0
.end method

.method public windowingModeToTargetWindowingMode(I)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_2

    .line 3
    .line 4
    const/4 p0, 0x5

    .line 5
    if-eq p1, p0, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x6

    .line 8
    if-eq p1, p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x3

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p0, 0x4

    .line 15
    goto :goto_0

    .line 16
    :cond_2
    const/4 p0, 0x2

    .line 17
    :goto_0
    return p0
.end method

.method public final writeStateChanged(IIIIII)V
    .locals 8

    .line 1
    iget v3, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousState:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mFrameworkStatsLogWrapper:Lcom/android/server/media/projection/FrameworkStatsLogWrapper;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x2d9

    .line 9
    .line 10
    move v1, p1

    .line 11
    move v2, p2

    .line 12
    move v4, p3

    .line 13
    move v5, p4

    .line 14
    move v6, p5

    .line 15
    move v7, p6

    .line 16
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIII)V

    .line 17
    .line 18
    .line 19
    iput p2, p0, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->mPreviousState:I

    .line 20
    .line 21
    return-void
.end method

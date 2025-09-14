.class public final Lcom/android/server/biometrics/sensors/PerformanceTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sTrackers:Landroid/util/SparseArray;


# instance fields
.field public final mAllUsersInfo:Landroid/util/SparseArray;

.field public mHALDeathCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 10
    .line 11
    return-void
.end method

.method public static declared-synchronized getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->contains(I)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    sget-object v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    .line 27
    .line 28
    new-instance v2, Lcom/android/server/biometrics/sensors/PerformanceTracker;

    .line 29
    .line 30
    invoke-direct {v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    sget-object v1, Lcom/android/server/biometrics/sensors/PerformanceTracker;->sTrackers:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-object p0

    .line 46
    :goto_1
    monitor-exit v0

    .line 47
    throw p0
.end method


# virtual methods
.method public final createUserEntryIfNecessary(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final incrementAcquireForUser(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 13
    .line 14
    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquireCrypto:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 28
    .line 29
    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mAcquire:I

    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final incrementPermanentLockoutForUser(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 11
    .line 12
    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mPermanentLockout:I

    .line 17
    .line 18
    return-void
.end method

.method public final incrementTimedLockoutForUser(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    .line 11
    .line 12
    iget p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mTimedLockout:I

    .line 17
    .line 18
    return-void
.end method

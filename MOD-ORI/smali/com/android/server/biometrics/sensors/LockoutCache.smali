.class public final Lcom/android/server/biometrics/sensors/LockoutCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutTracker;


# instance fields
.field public final mUserLockoutStates:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutCache;->mUserLockoutStates:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getLockoutModeForUser(I)I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutCache;->mUserLockoutStates:Landroid/util/SparseIntArray;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    monitor-exit p0

    .line 10
    return p1

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public final setLockoutModeForUser(II)V
    .locals 3

    .line 1
    const-string v0, "LockoutCache"

    .line 2
    .line 3
    const-string v1, "Lockout for user: "

    .line 4
    .line 5
    const-string v2, " is "

    .line 6
    .line 7
    invoke-static {p1, p2, v1, v2, v0}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutCache;->mUserLockoutStates:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

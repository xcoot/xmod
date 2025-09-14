.class public final synthetic Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/BroadcastResponseStatsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/BroadcastResponseStatsTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/util/ArrayMap;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    :goto_0
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

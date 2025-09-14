.class public final Lcom/android/server/pm/UserManagerService$WatchedUserStates;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final states:Landroid/util/SparseIntArray;


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
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final get(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->states:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

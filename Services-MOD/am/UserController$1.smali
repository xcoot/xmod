.class public final Lcom/android/server/am/UserController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/UserController$1;->this$0:Lcom/android/server/am/UserController;

    .line 6
    return-void
.end method


# virtual methods
.method public final onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController$1;->this$0:Lcom/android/server/am/UserController;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter p2

    .line 16
    :try_start_0
    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 18
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 20
    if-ne v0, v1, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 24
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 26
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    :goto_0
    iget v0, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 37
    const/16 v1, -0x2710

    .line 39
    if-eq v0, v1, :cond_2

    .line 41
    iget-object p0, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 43
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 45
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    :cond_2
    monitor-exit p2

    .line 49
    :goto_1
    return-void

    .line 50
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController$1;->this$0:Lcom/android/server/am/UserController;

    .line 3
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 5
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 10
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 16
    :goto_0
    if-ltz v1, :cond_2

    .line 18
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 20
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 23
    move-result v2

    .line 24
    if-eq v2, p1, :cond_0

    .line 26
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 31
    move-result v2

    .line 32
    if-ne v2, p1, :cond_1

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 39
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 42
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 47
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

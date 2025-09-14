.class public final Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1;->val$handler:Landroid/os/Handler;

    .line 6
    iput-object p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1;->val$context:Landroid/content/Context;

    .line 8
    return-void
.end method


# virtual methods
.method public final onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 3
    sget-object p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 5
    iget-object v0, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 10
    :try_start_0
    iget-object v0, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    .line 12
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 15
    move-result v0

    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 18
    :goto_0
    if-ltz v0, :cond_1

    .line 20
    iget-object v1, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    .line 22
    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    .line 25
    move-result v1

    .line 26
    if-ne v1, p1, :cond_0

    .line 28
    iget-object v1, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    .line 30
    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p2, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 44
    iget-object p2, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1;->val$context:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1$$ExternalSyntheticLambda0;

    .line 48
    invoke-direct {v0, p2, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    .line 51
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1;->val$handler:Landroid/os/Handler;

    .line 53
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void

    .line 57
    :goto_2
    iget-object p1, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 62
    throw p0
.end method

.method public final onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 3
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 5
    iget-object v1, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 10
    :try_start_0
    iget-object v1, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    .line 12
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 15
    iget-object v1, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mPendingTasks:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v0, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 25
    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1$$ExternalSyntheticLambda1;

    .line 27
    invoke-direct {v0, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1$$ExternalSyntheticLambda1;-><init>(I)V

    .line 30
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1;->val$handler:Landroid/os/Handler;

    .line 32
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    iget-object p1, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    throw p0
.end method

.class public abstract Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sPerUserMap:Landroid/util/SparseArray;

.field public static final sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Landroid/util/SparseArray;

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 14
    .line 15
    return-void
.end method

.method public static get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method

.method public static putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 8
    .line 9
    if-ne v1, p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;-><init>(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object p1, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/util/IntArray;->contains(I)Z

    .line 33
    .line 34
    .line 35
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    :goto_0
    iget-object p0, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :try_start_1
    iget-object p1, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mPendingTasks:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLockNotifier:Ljava/util/concurrent/locks/Condition;

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_1
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    iget-object p1, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

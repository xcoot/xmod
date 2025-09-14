.class public final Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 3
    const-string p1, "android.ime.as"

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const/16 v0, 0xa

    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 8
    iget-object v0, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 15
    iget-object v0, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mPendingTasks:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 25
    iget-object v0, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mPendingTasks:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 33
    iget-object v1, v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mPendingTasks:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 38
    iget-object v1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 40
    iget-object v1, v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    .line 42
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 52
    iget-object v1, v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    .line 54
    invoke-virtual {v1}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    .line 57
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_2
    iget-object v2, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 60
    iget-object v2, v2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 62
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 65
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 68
    move-result v2

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    .line 71
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    const/4 v4, 0x0

    .line 75
    :goto_3
    if-ge v4, v2, :cond_2

    .line 77
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 80
    move-result v5

    .line 81
    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v1, v5}, Landroid/util/IntArray;->contains(I)Z

    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_1

    .line 89
    goto :goto_4

    .line 90
    :cond_1
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 93
    move-result-object v5

    .line 94
    check-cast v5, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$WriteTask;

    .line 96
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 101
    goto :goto_3

    .line 102
    :cond_2
    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1$$ExternalSyntheticLambda0;

    .line 104
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    goto :goto_5

    .line 113
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 115
    iget-object v0, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLockNotifier:Ljava/util/concurrent/locks/Condition;

    .line 117
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    goto :goto_1

    .line 121
    :goto_5
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;->this$0:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    .line 123
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 125
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 128
    throw v0
.end method

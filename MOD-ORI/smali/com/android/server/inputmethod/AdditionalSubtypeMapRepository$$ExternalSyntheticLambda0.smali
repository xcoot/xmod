.class public final synthetic Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerInternal;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerInternal;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerInternal;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1;

    .line 8
    .line 9
    invoke-direct {v2, p0, v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$1;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 13
    .line 14
    .line 15
    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    array-length v1, v0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_0

    .line 25
    .line 26
    aget v3, v0, v2

    .line 27
    .line 28
    sget-object v4, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->load(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0
.end method

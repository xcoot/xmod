.class public final Lcom/android/server/utils/UserTokenWatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/wm/KeyguardDisableHandler$1;

.field public final mHandler:Landroid/os/Handler;

.field public final mTag:Ljava/lang/String;

.field public final mWatchers:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler$1;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/utils/UserTokenWatcher;->mCallback:Lcom/android/server/wm/KeyguardDisableHandler$1;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/utils/UserTokenWatcher;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    const-string p1, "WindowManager"

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/utils/UserTokenWatcher;->mTag:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/os/TokenWatcher;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/os/TokenWatcher;->isAcquired()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const-string v4, "User "

    .line 34
    .line 35
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 39
    .line 40
    .line 41
    const-string v2, ":"

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 47
    .line 48
    const-string v4, " "

    .line 49
    .line 50
    invoke-direct {v2, p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2}, Landroid/os/TokenWatcher;->dump(Ljava/io/PrintWriter;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final isAcquired(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/os/TokenWatcher;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/os/TokenWatcher;->isAcquired()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    return p0

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

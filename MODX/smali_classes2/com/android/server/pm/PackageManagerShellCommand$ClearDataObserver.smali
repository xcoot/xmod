.class public final Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public finished:Z

.field public result:Z


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    const/4 p1, 0x1

    .line 3
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

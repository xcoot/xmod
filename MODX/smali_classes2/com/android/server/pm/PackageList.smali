.class public final Lcom/android/server/pm/PackageList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mPackageNames:Ljava/util/List;

.field public final mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageList;->mPackageNames:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/pm/PackageObserverHelper;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    new-instance v2, Landroid/util/ArraySet;

    .line 19
    .line 20
    iget-object v3, v0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iput-object v2, v0, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    .line 29
    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageAdded(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onPackageChanged(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageChanged(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageRemoved(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

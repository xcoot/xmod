.class public final Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mProtectedPackages:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    .line 11
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 9
    move-result p1

    .line 10
    const/4 p3, 0x0

    .line 11
    if-ltz p1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/Set;

    .line 21
    invoke-interface {p0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move p0, p3

    .line 32
    :goto_0
    monitor-exit p2

    .line 33
    if-eqz p0, :cond_1

    .line 35
    const/16 p0, 0x1e

    .line 37
    return p0

    .line 38
    :cond_1
    return p3

    .line 39
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

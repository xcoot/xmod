.class public final synthetic Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/location/LocationManagerInternal$LocationPackageTagsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/AppOpsPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/AppOpsPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/AppOpsPolicy;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p2}, Landroid/os/PackageTagsList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-instance p2, Landroid/os/PackageTagsList$Builder;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {p2, v1}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x0

    .line 42
    :goto_1
    if-ge v2, v1, :cond_2

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ne v3, p1, :cond_1

    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroid/os/PackageTagsList;

    .line 63
    .line 64
    invoke-virtual {p2, v3}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    .line 65
    .line 66
    .line 67
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {p2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0
.end method

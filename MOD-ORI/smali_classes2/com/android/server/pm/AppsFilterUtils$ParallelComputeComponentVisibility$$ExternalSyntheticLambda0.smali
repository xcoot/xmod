.class public final synthetic Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;

.field public final synthetic f$1:Lcom/android/server/pm/pkg/PackageStateInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mExistingSettings:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v2, :cond_3

    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mExistingSettings:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 30
    .line 31
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ne v5, v6, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    iget-object v5, v0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mForceQueryable:Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iget-object v6, v0, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 74
    .line 75
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    return-object v1
.end method

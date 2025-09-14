.class public final synthetic Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/content/pm/UserPackage;

.field public final synthetic f$4:Lcom/android/server/pm/pkg/SuspendParams;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;IZLandroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$3:Landroid/content/pm/UserPackage;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/pm/pkg/SuspendParams;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArraySet;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$3:Landroid/content/pm/UserPackage;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/pm/pkg/SuspendParams;

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x0

    .line 18
    move v6, v5

    .line 19
    :goto_0
    if-ge v6, v4, :cond_4

    .line 20
    .line 21
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    check-cast v7, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v7}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v7, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget-object v7, v7, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 38
    .line 39
    if-eqz v7, :cond_3

    .line 40
    .line 41
    iget-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 42
    .line 43
    if-nez v8, :cond_0

    .line 44
    .line 45
    new-instance v8, Lcom/android/server/utils/WatchedArrayMap;

    .line 46
    .line 47
    invoke-direct {v8, v5}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 51
    .line 52
    iget-object v9, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 53
    .line 54
    invoke-virtual {v8, v9}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 58
    .line 59
    iget-object v8, v8, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_1

    .line 66
    .line 67
    iget-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 68
    .line 69
    iget-object v8, v8, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-static {v8, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-nez v8, :cond_3

    .line 80
    .line 81
    :cond_1
    iget-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 82
    .line 83
    invoke-virtual {v8, v3, p0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v7, v7, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 91
    .line 92
    if-eqz v7, :cond_3

    .line 93
    .line 94
    iget-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 95
    .line 96
    if-eqz v8, :cond_3

    .line 97
    .line 98
    invoke-virtual {v8, v3}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    return-void
.end method

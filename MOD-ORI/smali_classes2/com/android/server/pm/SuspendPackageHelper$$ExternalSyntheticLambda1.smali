.class public final synthetic Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ge v2, v3, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3, p0}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    move v5, v1

    .line 36
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ge v5, v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Landroid/content/pm/UserPackage;

    .line 47
    .line 48
    iget-object v7, v3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper$UserStateWriteWrapper;->mUserState:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 49
    .line 50
    if-eqz v7, :cond_0

    .line 51
    .line 52
    iget-object v8, v7, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 53
    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    invoke-virtual {v8, v6}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 60
    .line 61
    .line 62
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method

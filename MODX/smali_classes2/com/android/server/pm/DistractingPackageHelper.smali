.class public final Lcom/android/server/pm/DistractingPackageHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/SuspendPackageHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/DistractingPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/DistractingPackageHelper;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V
    .locals 8

    .line 1
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    array-length v1, p2

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/util/IntArray;

    .line 15
    .line 16
    array-length v2, p2

    .line 17
    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    array-length v3, p2

    .line 22
    if-ge v2, v3, :cond_2

    .line 23
    .line 24
    aget-object v3, p2, v2

    .line 25
    .line 26
    invoke-interface {p1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v3, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    iget v3, v3, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 48
    .line 49
    invoke-static {p3, v3}, Landroid/os/UserHandle;->getUid(II)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p1, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    .line 60
    .line 61
    invoke-direct {p1, p3, v0}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    new-array p1, p1, [Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    move-object v4, p1

    .line 86
    check-cast v4, [Ljava/lang/String;

    .line 87
    .line 88
    new-instance v3, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 89
    .line 90
    invoke-direct {v3, p2}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    const/4 v7, 0x0

    .line 98
    iget-object v2, p0, Lcom/android/server/pm/DistractingPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 99
    .line 100
    move v6, p3

    .line 101
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/BroadcastHelper;->sendDistractingPackagesChanged(Ljava/util/function/Supplier;[Ljava/lang/String;[III)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 105
    .line 106
    .line 107
    :cond_3
    return-void
.end method

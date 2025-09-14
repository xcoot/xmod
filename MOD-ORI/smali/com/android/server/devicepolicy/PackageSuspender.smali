.class public final Lcom/android/server/devicepolicy/PackageSuspender;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mExemptedPackages:Ljava/util/List;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public final mSuspendedPackageAfter:Ljava/util/Set;

.field public final mSuspendedPackageBefore:Ljava/util/Set;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Landroid/content/pm/PackageManagerInternal;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageBefore:Ljava/util/Set;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :goto_1
    iput-object p2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageAfter:Ljava/util/Set;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 25
    .line 26
    iput p5, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mUserId:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final suspend(Ljava/util/Set;)[Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/util/ArraySet;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-direct {v2, v3}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, [Ljava/lang/String;

    .line 32
    .line 33
    iget v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mUserId:I

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    iget-object p0, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 37
    .line 38
    invoke-virtual {p0, v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(IZ[Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v0, "DevicePolicyManager"

    .line 49
    .line 50
    const-string v1, "PM failed to suspend packages (%s)"

    .line 51
    .line 52
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    move-object p1, v1

    .line 64
    :goto_0
    new-instance p0, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, p0}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, [Ljava/lang/String;

    .line 75
    .line 76
    return-object p0
.end method

.method public final unsuspend(Ljava/util/Set;)[Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageBefore:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageAfter:Ljava/util/Set;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageAfter:Ljava/util/Set;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    invoke-direct {p1, v2}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, [Ljava/lang/String;

    .line 39
    .line 40
    iget v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mUserId:I

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    iget-object p0, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 44
    .line 45
    invoke-virtual {p0, v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(IZ[Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_0

    .line 50
    .line 51
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "DevicePolicyManager"

    .line 56
    .line 57
    const-string v2, "PM failed to unsuspend packages (%s)"

    .line 58
    .line 59
    invoke-static {v0, v2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    new-instance p1, Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    new-instance p0, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, p0}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, [Ljava/lang/String;

    .line 81
    .line 82
    return-object p0
.end method

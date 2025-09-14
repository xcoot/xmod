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

    .line 4
    if-eqz p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 10
    move-result-object p1

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageBefore:Ljava/util/Set;

    .line 13
    if-eqz p2, :cond_1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 19
    move-result-object p2

    .line 20
    :goto_1
    iput-object p2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageAfter:Ljava/util/Set;

    .line 22
    iput-object p3, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    .line 24
    iput-object p4, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 26
    iput p5, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mUserId:I

    .line 28
    return-void
.end method


# virtual methods
.method public final suspend(Ljava/util/Set;)[Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 6
    new-instance v1, Landroid/util/ArraySet;

    .line 8
    iget-object v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    .line 10
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 16
    iget-object v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    .line 18
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 21
    new-instance v2, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-direct {v2, v3}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>(I)V

    .line 27
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, [Ljava/lang/String;

    .line 33
    iget v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mUserId:I

    .line 35
    const/4 v3, 0x1

    .line 36
    iget-object p0, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 38
    invoke-virtual {p0, v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(IZ[Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_0

    .line 44
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    const-string v0, "DevicePolicyManager"

    .line 50
    const-string v1, "PM failed to suspend packages (%s)"

    .line 52
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 63
    move-object p1, v1

    .line 64
    :goto_0
    new-instance p0, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>(I)V

    .line 70
    invoke-interface {p1, p0}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 73
    move-result-object p0

    .line 74
    check-cast p0, [Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public final unsuspend(Ljava/util/Set;)[Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageBefore:Ljava/util/Set;

    .line 5
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageAfter:Ljava/util/Set;

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 13
    new-instance v1, Landroid/util/ArraySet;

    .line 15
    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 18
    iget-object p1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mSuspendedPackageAfter:Ljava/util/Set;

    .line 20
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 23
    iget-object p1, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mExemptedPackages:Ljava/util/List;

    .line 25
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 28
    new-instance p1, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    .line 30
    const/4 v2, 0x3

    .line 31
    invoke-direct {p1, v2}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>(I)V

    .line 34
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    check-cast p1, [Ljava/lang/String;

    .line 40
    iget v2, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mUserId:I

    .line 42
    const/4 v3, 0x0

    .line 43
    iget-object p0, p0, Lcom/android/server/devicepolicy/PackageSuspender;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 45
    invoke-virtual {p0, v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(IZ[Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_0

    .line 51
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    const-string v0, "DevicePolicyManager"

    .line 57
    const-string v2, "PM failed to unsuspend packages (%s)"

    .line 59
    invoke-static {v0, v2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_0
    new-instance p1, Landroid/util/ArraySet;

    .line 64
    invoke-direct {p1, p0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 70
    new-instance p0, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;

    .line 72
    const/4 p1, 0x0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/PackageSuspender$$ExternalSyntheticLambda0;-><init>(I)V

    .line 76
    invoke-interface {v1, p0}, Ljava/util/Set;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 80
    check-cast p0, [Ljava/lang/String;

    .line 82
    return-object p0
.end method

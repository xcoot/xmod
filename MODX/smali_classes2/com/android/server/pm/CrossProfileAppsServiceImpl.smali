.class public final Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.super Landroid/content/pm/ICrossProfileApps$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

.field public final mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/pm/ICrossProfileApps$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final canConfigureInteractAcrossProfiles(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z
    .locals 4

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;

    const/4 v3, 0x2

    invoke-direct {v2, p2, v3, p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;-><init>(IILcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x5d

    .line 6
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result p2

    .line 9
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2, p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;-><init>(IILcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final canInteractAcrossProfiles(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(ILjava/lang/String;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 32
    .line 33
    invoke-interface {v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingPid()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/os/UserHandle;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 60
    .line 61
    new-instance v4, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;

    .line 62
    .line 63
    invoke-direct {v4, p0, p1, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v3, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v3, -0x1

    .line 77
    if-ne v1, v3, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/4 v2, 0x1

    .line 88
    :cond_4
    :goto_0
    return v2
.end method

.method public final canRequestInteractAcrossProfiles(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 14
    .line 15
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v0, v2}, Landroid/os/UserManager;->getProfileIdsExcludingHidden(IZ)[I

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    array-length v2, v1

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x0

    .line 27
    if-ge v2, v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;[I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/16 v1, 0x5d

    .line 38
    .line 39
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(ILjava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    :goto_0
    return v4
.end method

.method public final canUserAttemptToConfigureInteractAcrossProfiles(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 5
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v0, v4

    .line 8
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 12
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    return v1

    .line 13
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;[I)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    const/16 v2, 0x5d

    .line 14
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    return v1

    .line 16
    :cond_5
    iget-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_8

    .line 17
    array-length p2, v0

    move v3, v1

    :goto_2
    if-ge v3, p2, :cond_8

    aget v4, v0, v3

    .line 18
    iget-object v5, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, p1, v6, v7, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    goto :goto_3

    .line 19
    :cond_6
    const-string v5, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public final clearInteractAcrossProfilesAppOps(I)V
    .locals 6

    .line 1
    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 24
    .line 25
    invoke-interface {v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(IIJ)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda14;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/util/List;

    .line 57
    .line 58
    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda5;

    .line 59
    .line 60
    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x7d

    .line 8
    .line 9
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    filled-new-array {p1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(ILjava/lang/String;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final getTargetUserProfilesUnchecked(ILjava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {v1, p1, v2, p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;-><init>(IILcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/List;

    .line 14
    .line 15
    return-object p0
.end method

.method public final hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 22
    .line 23
    invoke-static {p0, v0, p2, p1, p3}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :cond_2
    :goto_0
    return v1
.end method

.method public final hasRequestedAppOpPermission(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p2, p1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0, p3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    const-string p0, "CrossProfileAppsService"

    .line 17
    .line 18
    const-string p1, "PackageManager dead. Cannot get permission info"

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final isPermissionGranted(ILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->checkComponentPermission(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isProfileOwner(Ljava/lang/String;[I)Z
    .locals 7

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    .line 6
    aget v3, p2, v2

    .line 7
    .line 8
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 9
    .line 10
    new-instance v5, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    invoke-direct {v5, p0, v3, v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v4, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/content/ComponentName;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    move v3, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    :goto_1
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v1
.end method

.method public final resetInteractAcrossProfilesAppOps(ILjava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v1, "Not resetting app-op for package "

    .line 24
    .line 25
    const-string v2, " since it is still configurable by users."

    .line 26
    .line 27
    const-string v3, "CrossProfileAppsService"

    .line 28
    .line 29
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v1, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 34
    .line 35
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOp(ILjava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method public final setInteractAcrossProfilesAppOp(ILjava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 25
    .line 26
    const-string p1, "INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL is required to set the app-op for interacting across profiles."

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    :goto_0
    const-string v1, "android.permission.MANAGE_APP_OPS_MODES"

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    const-string v1, "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES"

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 50
    .line 51
    const-string p1, "MANAGE_APP_OPS_MODES or CONFIGURE_INTERACT_ACROSS_PROFILES is required to set the app-op for interacting across profiles."

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_3
    :goto_1
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpUnchecked(IILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final setInteractAcrossProfilesAppOpForProfileOrThrow(IILjava/lang/String;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p3, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v2, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 13
    .line 14
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v8, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 19
    .line 20
    new-instance v9, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;

    .line 21
    .line 22
    move-object v2, v9

    .line 23
    move-object v3, p0

    .line 24
    move v4, p1

    .line 25
    move v6, v0

    .line 26
    move-object v7, p3

    .line 27
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v8, v9}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    const-string p0, "Attempt to set mode to existing value of "

    .line 43
    .line 44
    const-string p4, " for "

    .line 45
    .line 46
    const-string v0, " on profile user ID "

    .line 47
    .line 48
    invoke-static {p1, p0, p4, p3, v0}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "CrossProfileAppsService"

    .line 53
    .line 54
    invoke-static {p0, p2, p1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    const/4 v2, -0x1

    .line 59
    invoke-virtual {p0, v0, v2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 64
    .line 65
    invoke-interface {v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const-string v5, "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES"

    .line 70
    .line 71
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 78
    .line 79
    new-instance v5, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda6;

    .line 80
    .line 81
    invoke-direct {v5, p0, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v4, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 89
    .line 90
    invoke-interface {v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const/16 v5, 0x5d

    .line 95
    .line 96
    invoke-virtual {v4, v5, v0, p1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 97
    .line 98
    .line 99
    :goto_0
    if-nez v3, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p0, v0, v2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 110
    .line 111
    invoke-interface {v2, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->killUid(I)V

    .line 112
    .line 113
    .line 114
    :goto_1
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    new-instance v0, Landroid/content/Intent;

    .line 119
    .line 120
    const-string v2, "android.content.pm.action.CAN_INTERACT_ACROSS_PROFILES_CHANGED"

    .line 121
    .line 122
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 130
    .line 131
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isCrossProfile()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    const/high16 v2, 0x11000000

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    const/high16 v2, 0x40000000    # 2.0f

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 157
    .line 158
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2, v0, v1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_5

    .line 175
    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 181
    .line 182
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 194
    .line 195
    invoke-interface {v2, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_5
    if-nez p4, :cond_6

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_6
    const/16 p2, 0x8b

    .line 203
    .line 204
    invoke-static {p2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    filled-new-array {p3}, [Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p4

    .line 212
    invoke-virtual {p2, p4}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    invoke-virtual {p2, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 221
    .line 222
    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isCrossProfile()Z

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    invoke-virtual {p1, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 239
    .line 240
    .line 241
    :goto_4
    return-void
.end method

.method public final setInteractAcrossProfilesAppOpUnchecked(IILjava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "CrossProfileAppsService"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string p0, "Tried to turn on the appop for interacting across profiles for invalid app "

    .line 12
    .line 13
    invoke-static {p0, p3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, p2, v2}, Landroid/os/UserManager;->getProfileIdsExcludingHidden(IZ)[I

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    array-length v3, v1

    .line 29
    move v4, v2

    .line 30
    :goto_0
    if-ge v4, v3, :cond_3

    .line 31
    .line 32
    aget v5, v1, v4

    .line 33
    .line 34
    iget-object v6, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 35
    .line 36
    new-instance v7, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;

    .line 37
    .line 38
    invoke-direct {v7, p0, p3, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v6, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    if-ne v5, p2, :cond_2

    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v6, v2

    .line 59
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, v5, p3, v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpForProfileOrThrow(IILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v6

    .line 64
    const-string v7, "Missing package "

    .line 65
    .line 66
    const-string v8, " on profile user ID "

    .line 67
    .line 68
    invoke-static {v5, v7, p3, v8}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v0, v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    return-void
.end method

.method public final startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 14

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p2

    .line 3
    .line 4
    move-object/from16 v8, p4

    .line 5
    .line 6
    move/from16 v9, p5

    .line 7
    .line 8
    move-object/from16 v10, p8

    .line 9
    .line 10
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x7e

    .line 20
    .line 21
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 34
    .line 35
    .line 36
    iget-object v0, v6, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, v6, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 43
    .line 44
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget-object v1, v6, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 49
    .line 50
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p0, v0, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(ILjava/lang/String;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_9

    .line 67
    .line 68
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_8

    .line 77
    .line 78
    new-instance v11, Landroid/content/Intent;

    .line 79
    .line 80
    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 81
    .line 82
    .line 83
    if-eqz p6, :cond_2

    .line 84
    .line 85
    const-string v0, "android.intent.action.MAIN"

    .line 86
    .line 87
    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    const-string v0, "android.intent.category.LAUNCHER"

    .line 91
    .line 92
    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    if-eqz p7, :cond_1

    .line 96
    .line 97
    if-eqz v10, :cond_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    const/high16 v0, 0x200000

    .line 101
    .line 102
    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    :goto_0
    const/high16 v0, 0x10200000

    .line 107
    .line 108
    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_2
    if-eq v0, v9, :cond_6

    .line 120
    .line 121
    invoke-virtual {p0, v3, v1, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_4

    .line 126
    .line 127
    const-string v1, "android.permission.START_CROSS_PROFILE_ACTIVITIES"

    .line 128
    .line 129
    invoke-virtual {p0, v3, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(ILjava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 137
    .line 138
    const-string v1, "Attempt to launch activity without one of the required android.permission.INTERACT_ACROSS_PROFILES or android.permission.START_CROSS_PROFILE_ACTIVITIES permissions."

    .line 139
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_4
    :goto_2
    iget-object v1, v6, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 145
    .line 146
    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda9;

    .line 147
    .line 148
    invoke-direct {v2, p0, v0, v9}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Ljava/lang/Boolean;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_5

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    .line 165
    .line 166
    const-string v1, "Attempt to launch activity when target user is not in the same profile group."

    .line 167
    .line 168
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v0

    .line 172
    :cond_6
    :goto_3
    invoke-virtual {v11, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    :goto_4
    iget-object v12, v6, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 176
    .line 177
    new-instance v13, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    move-object v0, v13

    .line 180
    move-object v1, p0

    .line 181
    move-object v2, v11

    .line 182
    move/from16 v4, p5

    .line 183
    .line 184
    move-object/from16 v5, p4

    .line 185
    .line 186
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;IILandroid/content/ComponentName;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v12, v13}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 190
    .line 191
    .line 192
    if-nez v10, :cond_7

    .line 193
    .line 194
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    move-object v10, v0

    .line 203
    goto :goto_5

    .line 204
    :cond_7
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 213
    .line 214
    .line 215
    :goto_5
    const/4 v0, 0x0

    .line 216
    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v11, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 220
    .line 221
    .line 222
    iget-object v0, v6, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 223
    .line 224
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const/4 v6, 0x0

    .line 229
    move-object v1, p1

    .line 230
    move-object/from16 v2, p2

    .line 231
    .line 232
    move-object/from16 v3, p3

    .line 233
    .line 234
    move-object v4, v11

    .line 235
    move-object/from16 v5, p7

    .line 236
    .line 237
    move-object v7, v10

    .line 238
    move/from16 v8, p5

    .line 239
    .line 240
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    .line 245
    .line 246
    const-string v1, " attempts to start an activity in other package - "

    .line 247
    .line 248
    invoke-static {v7, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v0

    .line 267
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    .line 268
    .line 269
    const-string v1, " cannot access unrelated user "

    .line 270
    .line 271
    invoke-static {v9, v7, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw v0
.end method

.method public final startActivityAsUserByIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v10, p2

    .line 3
    move/from16 v9, p5

    .line 4
    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "The intent must have a Component set"

    .line 16
    .line 17
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 30
    .line 31
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(ILjava/lang/String;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eq v1, v9, :cond_1

    .line 40
    .line 41
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 53
    .line 54
    const-string v1, " cannot access unrelated user "

    .line 55
    .line 56
    invoke-static {v9, p2, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_1
    :goto_0
    new-instance v5, Landroid/content/Intent;

    .line 65
    .line 66
    move-object v3, p4

    .line 67
    invoke-direct {v5, p4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    if-eq v1, v9, :cond_3

    .line 88
    .line 89
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 90
    .line 91
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iget-object v3, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 96
    .line 97
    invoke-interface {v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingPid()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {p0, v1, v3, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(IILjava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 109
    .line 110
    const-string v1, "Attempt to launch activity without required android.permission.INTERACT_ACROSS_PROFILES permission or target user is not in the same profile group."

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 117
    .line 118
    new-instance v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda11;

    .line 119
    .line 120
    invoke-direct {v3, p0, v5, v2, v9}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;II)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v1, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 127
    .line 128
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const/4 v7, 0x0

    .line 133
    move-object v2, p1

    .line 134
    move-object v3, p2

    .line 135
    move-object v4, p3

    .line 136
    move-object/from16 v6, p6

    .line 137
    .line 138
    move-object/from16 v8, p7

    .line 139
    .line 140
    move/from16 v9, p5

    .line 141
    .line 142
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    .line 143
    .line 144
    .line 145
    const/16 v1, 0x96

    .line 146
    .line 147
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    filled-new-array {p2}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-object v2, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 160
    .line 161
    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    iget-object v3, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 166
    .line 167
    new-instance v4, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;

    .line 168
    .line 169
    const/4 v5, 0x0

    .line 170
    invoke-direct {v4, p0, v2, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v3, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Ljava/lang/Boolean;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    .line 192
    .line 193
    const-string v1, " attempts to start an activity in other package - "

    .line 194
    .line 195
    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v0
.end method

.method public final verifyCallingPackage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

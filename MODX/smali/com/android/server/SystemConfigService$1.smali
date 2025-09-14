.class public final Lcom/android/server/SystemConfigService$1;
.super Landroid/os/ISystemConfig$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SystemConfigService;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemConfigService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    .line 3
    invoke-direct {p0}, Landroid/os/ISystemConfig$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getDefaultVrComponents()Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "android.permission.QUERY_ALL_PACKAGES"

    .line 9
    const-string v1, "Caller must hold android.permission.QUERY_ALL_PACKAGES"

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance p0, Ljava/util/ArrayList;

    .line 16
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mDefaultVrComponents:Landroid/util/ArraySet;

    .line 22
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    return-object p0
.end method

.method public final getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    .line 3
    iget-object p0, p0, Lcom/android/server/SystemConfigService;->mContext:Landroid/content/Context;

    .line 5
    const-string v0, "android.permission.READ_CARRIER_APP_INFO"

    .line 7
    const-string/jumbo v1, "getDisabledUntilUsedPreInstalledCarrierApps requires READ_CARRIER_APP_INFO"

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p0, Ljava/util/ArrayList;

    .line 15
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierApps:Landroid/util/ArraySet;

    .line 21
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    return-object p0
.end method

.method public final getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    .line 3
    iget-object p0, p0, Lcom/android/server/SystemConfigService;->mContext:Landroid/content/Context;

    .line 5
    const-string v0, "android.permission.READ_CARRIER_APP_INFO"

    .line 7
    const-string/jumbo v1, "getDisabledUntilUsedPreInstalledCarrierAssociatedAppEntries requires READ_CARRIER_APP_INFO"

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 16
    move-result-object p0

    .line 17
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 19
    return-object p0
.end method

.method public final getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Ljava/util/Map;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    .line 3
    iget-object p0, p0, Lcom/android/server/SystemConfigService;->mContext:Landroid/content/Context;

    .line 5
    const-string v0, "android.permission.READ_CARRIER_APP_INFO"

    .line 7
    const-string/jumbo v1, "getDisabledUntilUsedPreInstalledCarrierAssociatedApps requires READ_CARRIER_APP_INFO"

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 16
    move-result-object p0

    .line 17
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mDisabledUntilUsedPreinstalledCarrierAssociatedApps:Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda0;

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, v1}, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda0;-><init>(I)V

    .line 33
    new-instance v1, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda0;

    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {v1, v2}, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda0;-><init>(I)V

    .line 39
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/util/Map;

    .line 49
    return-object p0
.end method

.method public final getEnabledComponentOverrides(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mPackageComponentEnabledState:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/util/ArrayMap;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    if-eqz p0, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 52
    new-instance v2, Landroid/content/ComponentName;

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-object v0
.end method

.method public final getEnhancedConfirmationTrustedInstallers()Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "android.permission.MANAGE_ENHANCED_CONFIRMATION_STATES"

    .line 9
    const-string v1, "Caller must hold android.permission.MANAGE_ENHANCED_CONFIRMATION_STATES"

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mEnhancedConfirmationTrustedInstallers:Landroid/util/ArraySet;

    .line 20
    invoke-virtual {p0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda0;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda0;-><init>(I)V

    .line 30
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final getEnhancedConfirmationTrustedPackages()Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "android.permission.MANAGE_ENHANCED_CONFIRMATION_STATES"

    .line 9
    const-string v1, "Caller must hold android.permission.MANAGE_ENHANCED_CONFIRMATION_STATES"

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 17
    move-result-object p0

    .line 18
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mEnhancedConfirmationTrustedPackages:Landroid/util/ArraySet;

    .line 20
    invoke-virtual {p0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda0;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda0;-><init>(I)V

    .line 30
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final getPreventUserDisablePackages()Ljava/util/List;
    .locals 2

    .line 1
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 9
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mPreventUserDisablePackages:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda1;

    .line 21
    invoke-direct {v1, p0}, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/PackageManagerInternal;)V

    .line 24
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 27
    move-result-object p0

    .line 28
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/util/List;

    .line 38
    return-object p0
.end method

.method public final getSystemPermissionUids(Ljava/lang/String;)[I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    .line 3
    iget-object p0, p0, Lcom/android/server/SystemConfigService;->mContext:Landroid/content/Context;

    .line 5
    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    .line 7
    const-string/jumbo v1, "getSystemPermissionUids requires GET_RUNTIME_PERMISSIONS"

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 28
    move-result v2

    .line 29
    if-ge v1, v2, :cond_1

    .line 31
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/util/ArraySet;

    .line 37
    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 48
    move-result v2

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

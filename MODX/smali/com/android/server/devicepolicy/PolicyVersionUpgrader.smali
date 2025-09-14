.class public final Lcom/android/server/devicepolicy/PolicyVersionUpgrader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

.field public final mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    .line 8
    return-void
.end method


# virtual methods
.method public final saveSuspendedPackages(Landroid/util/SparseArray;ILandroid/content/ComponentName;)V
    .locals 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 7
    const-string v0, "DevicePolicyManager"

    .line 9
    if-nez p1, :cond_0

    .line 11
    const-string p0, "No policy data for owner user, cannot migrate suspended packages"

    .line 13
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 19
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 25
    if-nez p1, :cond_1

    .line 27
    const-string p0, "No admin for owner, cannot migrate suspended packages"

    .line 29
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 35
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;

    .line 37
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DpmsUpgradeDataProvider;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 39
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 47
    move-result-object v1

    .line 48
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 50
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager(I)Landroid/content/pm/PackageManager;

    .line 53
    move-result-object p0

    .line 54
    const-wide/32 v2, 0xc0000

    .line 57
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    .line 64
    move-result-object p0

    .line 65
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 68
    move-result-object p0

    .line 69
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda15;

    .line 71
    const/16 v3, 0xd

    .line 73
    invoke-direct {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda15;-><init>(I)V

    .line 76
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 79
    move-result-object p0

    .line 80
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;

    .line 82
    const/4 v3, 0x2

    .line 83
    invoke-direct {v2, p2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda179;-><init>(IILjava/lang/Object;)V

    .line 86
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 93
    move-result-object v1

    .line 94
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Ljava/util/List;

    .line 100
    iput-object p0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    .line 102
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 105
    move-result p0

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object p0

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object p1

    .line 114
    filled-new-array {p0, p3, p1}, [Ljava/lang/Object;

    .line 117
    move-result-object p0

    .line 118
    const-string p1, "Saved %d packages suspended by %s in user %d"

    .line 120
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.class public final synthetic Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mSettingsDelegator:Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$PackageSettingsDelegator;->mGetPackagesLocked:Ljava/util/function/Supplier;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/utils/WatchedArrayMap;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 22
    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-interface {p0, p1, v1}, Landroid/content/pm/IPackageManager;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    :goto_0
    const/4 p1, 0x1

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    if-nez p0, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->isSideLoadingApp(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    xor-int/2addr p1, p0

    .line 62
    :cond_1
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

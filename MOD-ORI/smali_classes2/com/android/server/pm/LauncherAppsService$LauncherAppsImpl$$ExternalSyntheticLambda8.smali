.class public final synthetic Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda8;->f$1:Landroid/os/UserHandle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda8;->f$1:Landroid/os/UserHandle;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 6
    .line 7
    sget v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->$r8$clinit:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(IILjava/lang/String;)Landroid/content/pm/IncrementalStatesInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/pm/IncrementalStatesInfo;->isLoading()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 39
    .line 40
    new-instance v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;

    .line 41
    .line 42
    invoke-direct {v2, v0, p1, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-virtual {v1, p1, v2, p0}, Landroid/content/pm/PackageManagerInternal;->registerInstalledLoadingProgressCallback(Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;I)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.class public final Lcom/android/server/pm/ComputerLocked;
.super Lcom/android/server/pm/ComputerEngine;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final androidApplication()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    return-object p0
.end method

.method public final instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 4
    .line 5
    return-object p0
.end method

.method public final resolveComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 4
    .line 5
    return-object p0
.end method

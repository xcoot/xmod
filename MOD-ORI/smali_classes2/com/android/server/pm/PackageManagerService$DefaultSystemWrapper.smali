.class public final Lcom/android/server/pm/PackageManagerService$DefaultSystemWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static disablePackageCaches()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/content/pm/PackageManager;->disableApplicationInfoCache()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/content/pm/PackageManager;->disablePackageInfoCache()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/app/ApplicationPackageManager;->disableGetPackagesForUidCache()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateHasSystemFeatureCache()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static enablePackageCaches()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

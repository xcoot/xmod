.class public final synthetic Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "NoWaitRotationPackageSetting"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->deleteLegacyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->ASPECT_RATIO_DIRECTORY:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "PackageMap"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->deleteLegacyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "CustomAspectRatioPackageMap"

    .line 16
    .line 17
    invoke-static {p0, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->deleteLegacyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

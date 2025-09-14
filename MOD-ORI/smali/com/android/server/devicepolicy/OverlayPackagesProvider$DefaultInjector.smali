.class public final Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;


# virtual methods
.method public final getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getDevicePolicyManagementRoleHolderPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public final getInputMethodListAsUser(I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getInputMethodListAsUser(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

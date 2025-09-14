.class public final synthetic Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserSystemPackageInstaller;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserSystemPackageInstaller;Ljava/util/Set;ZLjava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$3:Ljava/util/Set;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$2:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;->f$3:Ljava/util/Set;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, v0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-static {v3, p1, v1, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->shouldInstallPackage(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

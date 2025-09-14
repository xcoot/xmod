.class public final Lcom/android/server/pm/ReconciledPackage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllPackages:Ljava/util/Map;

.field public final mAllowedSharedLibraryInfos:Ljava/util/List;

.field public mCollectedSharedLibraryInfos:Ljava/util/ArrayList;

.field public final mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

.field public final mInstallRequest:Lcom/android/server/pm/InstallRequest;

.field public final mInstallRequests:Ljava/util/List;

.field public final mRemoveAppKeySetData:Z

.field public final mSharedUserSignaturesChanged:Z

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/DeletePackageAction;Ljava/util/List;Landroid/content/pm/SigningDetails;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequests:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ReconciledPackage;->mAllPackages:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/ReconciledPackage;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/ReconciledPackage;->mDeletePackageAction:Lcom/android/server/pm/DeletePackageAction;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/pm/ReconciledPackage;->mAllowedSharedLibraryInfos:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/ReconciledPackage;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/pm/ReconciledPackage;->mSharedUserSignaturesChanged:Z

    .line 17
    .line 18
    iput-boolean p8, p0, Lcom/android/server/pm/ReconciledPackage;->mRemoveAppKeySetData:Z

    .line 19
    .line 20
    return-void
.end method

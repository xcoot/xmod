.class public final Lcom/android/server/pm/DeletePackageAction;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeletingPs:Lcom/android/server/pm/PackageSetting;

.field public final mDisabledPs:Lcom/android/server/pm/PackageSetting;

.field public final mFlags:I

.field public final mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    .line 13
    .line 14
    return-void
.end method

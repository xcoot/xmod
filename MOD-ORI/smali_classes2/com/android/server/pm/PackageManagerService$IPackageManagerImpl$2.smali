.class public final Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic val$realMoveId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->val$realMoveId:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCreated(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStatusChanged(IIJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->val$realMoveId:I

    .line 8
    .line 9
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(IIJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

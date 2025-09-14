.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 8
    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v7, 0x1

    .line 14
    move-object v6, p0

    .line 15
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    const-string v0, "Failed to uninstall package with failed dataloader: "

    .line 23
    .line 24
    const-string v1, "PackageInstallerSession"

    .line 25
    .line 26
    invoke-static {v0, p0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.class public final Lcom/android/server/pm/PackageInstallerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$Lifecycle;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x226

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Lifecycle;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

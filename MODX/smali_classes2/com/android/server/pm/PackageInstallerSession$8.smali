.class public final Lcom/android/server/pm/PackageInstallerSession$8;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageLoadingProgressChanged(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 7
    .line 8
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

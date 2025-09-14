.class public final synthetic Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->startPrePackageInstall()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    const-string v2, "/data/user_de/0/android/cache/PrePackageInstaller"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/pm/PmSharedPreferences;->putLong(Landroid/content/Context;J)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.class public final Lcom/android/server/pm/PackageInstallerSession$5;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic val$future:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$5;->val$future:Ljava/util/concurrent/CompletableFuture;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$5;->val$future:Ljava/util/concurrent/CompletableFuture;

    .line 5
    .line 6
    new-instance p2, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 9
    .line 10
    invoke-direct {p2, p0, p4}, Lcom/android/server/pm/PackageInstallerSession$InstallResult;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->val$future:Ljava/util/concurrent/CompletableFuture;

    .line 18
    .line 19
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 20
    .line 21
    invoke-direct {p1, p2, p3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

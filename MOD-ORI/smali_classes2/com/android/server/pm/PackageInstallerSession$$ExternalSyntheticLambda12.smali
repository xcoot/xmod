.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-boolean v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    monitor-exit v2

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iput-boolean v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 21
    .line 22
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    iput-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;->run()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 34
    if-ne v1, v2, :cond_3

    .line 35
    .line 36
    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 37
    .line 38
    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcom/android/server/pm/StagingManager;->commitSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 47
    .line 48
    .line 49
    const-string p0, "Session staged"

    .line 50
    .line 51
    invoke-virtual {v0, p0, v4, v2, v5}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(Ljava/lang/String;Landroid/os/Bundle;IZ)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->install()Ljava/util/concurrent/CompletableFuture;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void

    .line 63
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p0
.end method

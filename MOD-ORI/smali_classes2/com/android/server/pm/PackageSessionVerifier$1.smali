.class public final Lcom/android/server/pm/PackageSessionVerifier$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageSessionVerifier;

.field public final synthetic val$callback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

.field public final synthetic val$session:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->this$0:Lcom/android/server/pm/PackageSessionVerifier;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$callback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget-object p4, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 4
    .line 5
    iget-boolean p4, p4, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->this$0:Lcom/android/server/pm/PackageSessionVerifier;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$callback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p4, "Starting preRebootVerification for session "

    .line 24
    .line 25
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p4, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 29
    .line 30
    iget p4, p4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 31
    .line 32
    const-string v0, "PackageSessionVerifier"

    .line 33
    .line 34
    invoke-static {p3, p4, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p3, p2, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance p4, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-direct {p4, p2, p1, p0, v0}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Ljava/lang/Object;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    if-eq p2, v0, :cond_1

    .line 50
    .line 51
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p4, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    .line 56
    .line 57
    invoke-virtual {p4, p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$callback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    .line 61
    .line 62
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->onResult(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionReady()V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$callback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->onResult(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
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

.class public final synthetic Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/content/pm/PackageInstaller$InstallConstraints;

.field public final synthetic f$3:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerService;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/PackageInstallerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$2:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$3:Landroid/content/IntentSender;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/PackageInstallerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$2:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;->f$3:Landroid/content/IntentSender;

    .line 8
    .line 9
    check-cast p1, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v6, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    new-array v4, p0, [Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, [Ljava/lang/String;

    .line 27
    .line 28
    const-string v4, "android.intent.extra.PACKAGES"

    .line 29
    .line 30
    invoke-virtual {v6, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string v1, "android.content.pm.extra.INSTALL_CONSTRAINTS"

    .line 34
    .line 35
    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string v1, "android.content.pm.extra.INSTALL_CONSTRAINTS_RESULT"

    .line 39
    .line 40
    invoke-virtual {v6, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x0

    .line 60
    invoke-virtual/range {v3 .. v10}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :catch_0
    return-void
.end method

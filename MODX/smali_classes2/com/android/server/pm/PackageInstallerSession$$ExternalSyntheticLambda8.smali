.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onResult(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

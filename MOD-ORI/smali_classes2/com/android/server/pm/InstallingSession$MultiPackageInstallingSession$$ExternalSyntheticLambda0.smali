.class public final synthetic Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    iget-object v0, v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->this$0:Lcom/android/server/pm/InstallingSession;

    .line 16
    .line 17
    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/InstallingSession;->processInstallRequests(Ljava/util/List;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

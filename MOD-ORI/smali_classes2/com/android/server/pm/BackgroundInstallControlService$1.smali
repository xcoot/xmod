.class public final Lcom/android/server/pm/BackgroundInstallControlService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/BackgroundInstallControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BackgroundInstallControlService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService$1;->this$0:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$1;->this$0:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mHandler:Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$1;->this$0:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mHandler:Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

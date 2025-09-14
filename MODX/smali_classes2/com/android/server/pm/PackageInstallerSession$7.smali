.class public final Lcom/android/server/pm/PackageInstallerSession$7;
.super Landroid/os/incremental/IStorageHealthListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic val$systemDataLoader:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$systemDataLoader:Z

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/incremental/IStorageHealthListener$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onHealthStatus(II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 4
    .line 5
    if-nez p1, :cond_3

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 8
    .line 9
    iget-boolean p1, p1, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    if-eq p2, p1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p2, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-eq p2, v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$systemDataLoader:Z

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 30
    .line 31
    iput-boolean p1, p2, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    const/4 p1, 0x5

    .line 38
    const/4 p2, -0x1

    .line 39
    const/16 v0, -0x14

    .line 40
    .line 41
    const-string v1, "Image is missing pages required for installation."

    .line 42
    .line 43
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    return-void
.end method

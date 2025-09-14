.class public final Lcom/android/server/pm/PackageInstallerService$Callbacks;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/os/RemoteCallbackList;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    return-void
.end method

.method public static invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_4

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v1, v2, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-interface {p0, v0, p1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionFinished(IZ)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Ljava/lang/Float;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-interface {p0, v0, p1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionProgressChanged(IF)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-interface {p0, v0, p1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionActiveChanged(IZ)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionBadgingChanged(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionCreated(I)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 12
    .line 13
    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_0
    if-ge v5, v2, :cond_3

    .line 21
    .line 22
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 23
    .line 24
    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroid/content/pm/IPackageInstallerCallback;

    .line 29
    .line 30
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 31
    .line 32
    invoke-virtual {v7, v5}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    check-cast v7, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;

    .line 37
    .line 38
    iget-object v8, v7, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->userCheck:Ljava/util/function/IntPredicate;

    .line 39
    .line 40
    invoke-interface {v8, v1}, Ljava/util/function/IntPredicate;->test(I)Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_2

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    if-nez v8, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    iget v7, v7, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->callingUid:I

    .line 58
    .line 59
    if-eq v7, v9, :cond_1

    .line 60
    .line 61
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-interface {v4, v7, v8}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-nez v7, :cond_1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_1
    :try_start_0
    invoke-static {v6, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    :catch_0
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.class public final Lcom/android/server/bridge/BridgeProxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mDelegateUserHandle:Landroid/os/UserHandle;

.field public final mDelegateUserId:I

.field public final mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

.field public mSemRemoteContentManager:Lcom/samsung/android/knox/SemRemoteContentManager;


# direct methods
.method public static -$$Nest$mcheckCallerPermissionFor(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string/jumbo p0, "checkCallerPermissionFor, ServiceName :Proxy , MethodName : "

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "BridgeProxy"

    .line 12
    .line 13
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static -$$Nest$mclearIdentityAndStartActivityAsUser(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSemRemoteContentManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 16
    .line 17
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 20
    .line 21
    iput p1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 22
    .line 23
    new-instance v0, Landroid/os/UserHandle;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final start(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v0, "onCreate BridgeProxy is starting for user "

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " "

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "BridgeProxy"

    .line 29
    .line 30
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-string/jumbo v1, "rcp"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mSemRemoteContentManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/bridge/BridgeProxy;->mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    .line 47
    .line 48
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerRCPInterface(Landroid/content/IRCPInterface;I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

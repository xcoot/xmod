.class public final Lcom/android/server/pm/PersonaManagerService$1;
.super Landroid/app/UserSwitchObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundProfileSwitch(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onForegroundProfileSwitch: "

    .line 2
    .line 3
    .line 4
    const-string v1, "PersonaManagerService"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 12
    .line 13
    const/16 v1, 0x50

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onLockedBootComplete(I)V
    .locals 2

    .line 1
    const-string v0, "PersonaManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "onLockedBootComplete: "

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v1, v0}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, p1, v1}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    :cond_0
    const-string v0, "PersonaManagerService"

    .line 38
    .line 39
    const-string v1, "container is already unlocked"

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const/4 v1, 0x5

    .line 49
    invoke-static {v0, p1, v1}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 55
    .line 56
    monitor-enter v0

    .line 57
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$1;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 63
    .line 64
    .line 65
    monitor-exit v0

    .line 66
    :cond_1
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

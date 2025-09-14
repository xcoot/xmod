.class public final Lcom/android/server/os/NativeTombstoneManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mManager:Lcom/android/server/os/NativeTombstoneManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 5

    .line 1
    const/16 v0, 0x226

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManagerService;->mManager:Lcom/android/server/os/NativeTombstoneManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroid/content/IntentFilter;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$1;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v1, p0, v2}, Lcom/android/server/os/NativeTombstoneManager$1;-><init>(Lcom/android/server/os/NativeTombstoneManager;I)V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iget-object v3, p0, Lcom/android/server/os/NativeTombstoneManager;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    new-instance p1, Landroid/content/IntentFilter;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string/jumbo v0, "package"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$1;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-direct {v1, p0, v4}, Lcom/android/server/os/NativeTombstoneManager$1;-><init>(Lcom/android/server/os/NativeTombstoneManager;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    sget-object p1, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter;->init()V

    .line 64
    .line 65
    .line 66
    new-instance p1, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda1;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/android/server/os/NativeTombstoneManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/os/NativeTombstoneManager;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/os/NativeTombstoneManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/os/NativeTombstoneManager;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManagerService;->mManager:Lcom/android/server/os/NativeTombstoneManager;

    .line 11
    .line 12
    const-class p0, Lcom/android/server/os/NativeTombstoneManager;

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.class public final Lcom/android/server/net/UrspService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/net/UrspService$UrspHandler;

.field public final mUidRemovedReceiver:Lcom/android/server/net/UrspService$1;

.field public final mUserRemovedReceiver:Lcom/android/server/net/UrspService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    new-instance v1, Lcom/android/server/net/UrspService$1;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {v1, p0, v0}, Lcom/android/server/net/UrspService$1;-><init>(Lcom/android/server/net/UrspService;I)V

    .line 10
    new-instance v6, Lcom/android/server/net/UrspService$1;

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {v6, p0, v0}, Lcom/android/server/net/UrspService$1;-><init>(Lcom/android/server/net/UrspService;I)V

    .line 16
    const-string/jumbo v0, "missing context"

    .line 19
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/content/Context;

    .line 25
    iput-object p1, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Landroid/os/HandlerThread;

    .line 29
    const-string v2, "UrspService"

    .line 31
    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 40
    move-result-object v0

    .line 41
    new-instance v2, Lcom/android/server/net/UrspService$UrspHandler;

    .line 43
    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    iput-object v2, p0, Lcom/android/server/net/UrspService;->mHandler:Lcom/android/server/net/UrspService$UrspHandler;

    .line 48
    const-string v0, "android.intent.action.UID_REMOVED"

    .line 50
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 53
    move-result-object v3

    .line 54
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 56
    iget-object v5, p0, Lcom/android/server/net/UrspService;->mHandler:Lcom/android/server/net/UrspService$UrspHandler;

    .line 58
    const/4 v4, 0x0

    .line 59
    move-object v0, p1

    .line 60
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 63
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 65
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 68
    move-result-object v0

    .line 69
    iget-object p0, p0, Lcom/android/server/net/UrspService;->mHandler:Lcom/android/server/net/UrspService$UrspHandler;

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p1, v6, v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 75
    return-void
.end method

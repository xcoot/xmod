.class public final Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 9
    iget-object p1, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    .line 14
    if-nez v1, :cond_1

    .line 16
    monitor-exit p1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    .line 23
    new-instance v1, Landroid/content/Intent;

    .line 25
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    .line 27
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    const/high16 v2, 0x40000000    # 2.0f

    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    const-string v2, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    .line 37
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 51
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 54
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 64
    :goto_0
    return-void

    .line 65
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p0
.end method

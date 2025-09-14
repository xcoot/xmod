.class public final Lcom/android/server/connectivity/Vpn$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final interfaceRemoved(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 6
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 16
    invoke-static {v1, p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mjniCheck(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 24
    iget-object v1, p1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p1, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 31
    const-string v3, "android:establish_vpn_service"

    .line 33
    iget v4, p1, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 35
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v3, v4, p1, v2}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 42
    iget-object v1, p1, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 44
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 46
    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 49
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 51
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->cleanupVpnStateLocked()V

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-object v1, p1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 59
    if-eqz v1, :cond_2

    .line 61
    const-string v1, "[Legacy VPN]"

    .line 63
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 73
    iget-object v1, p1, Lcom/android/server/connectivity/Vpn;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 75
    const-string v3, "android:establish_vpn_manager"

    .line 77
    iget v4, p1, Lcom/android/server/connectivity/Vpn;->mOwnerUID:I

    .line 79
    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 81
    invoke-virtual {v1, v3, v4, p1, v2}, Landroid/app/AppOpsManager;->finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 86
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 88
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exit()V

    .line 91
    :cond_2
    :goto_0
    monitor-exit v0

    .line 92
    return-void

    .line 93
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method

.method public final interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 3
    monitor-enter v0

    .line 4
    if-nez p2, :cond_0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 8
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    instance-of p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 14
    if-eqz p2, :cond_0

    .line 16
    check-cast p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 18
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 26
    const-string p2, "Legacy VPN is going down with "

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const-string p2, "LegacyVpnRunner"

    .line 34
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exitVpnRunner()V

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.class public final Lcom/android/server/am/BatteryStatsService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    const/16 p1, 0x15

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "CONNECTED"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "SUSPENDED"

    .line 13
    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->getDisplayTransport([I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/BatteryStatsService;->noteConnectivityChanged(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$2;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    const-string v0, "DISCONNECTED"

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BatteryStatsService;->noteConnectivityChanged(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

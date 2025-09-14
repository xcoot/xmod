.class public final Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$1;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$1;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mPowerManager:Landroid/os/PowerManager;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector$1;->this$0:Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/IpSecPacketLossDetector;->mLastIpSecTransformState:Landroid/net/IpSecTransformState;

    .line 27
    .line 28
    :cond_0
    return-void
.end method

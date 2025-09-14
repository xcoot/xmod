.class public final Lcom/android/server/am/BatteryStatsService$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final interfaceClassDataActivityChanged(IZJI)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    const/4 p2, 0x3

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p2, v0

    .line 7
    :goto_0
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    cmp-long v1, p3, v1

    .line 10
    .line 11
    if-gtz v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 14
    .line 15
    .line 16
    move-result-wide p3

    .line 17
    :cond_1
    if-eqz p1, :cond_3

    .line 18
    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    const-string p0, "Received unexpected transport in interfaceClassDataActivityChanged unexpected type: "

    .line 22
    .line 23
    const-string p2, "BatteryStatsService"

    .line 24
    .line 25
    invoke-static {p1, p0, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 30
    .line 31
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/am/BatteryStatsService;->noteWifiRadioPowerState(IJI)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    .line 36
    .line 37
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/am/BatteryStatsService;->noteMobileRadioPowerState(IJI)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-void
.end method

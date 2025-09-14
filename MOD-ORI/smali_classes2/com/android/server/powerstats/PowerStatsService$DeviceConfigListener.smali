.class public final Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final synthetic this$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 5
    .line 6
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const-string v1, "battery_stats"

    .line 7
    .line 8
    const-string/jumbo v2, "power_monitor_api_enabled"

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1, v2, v0}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 25
    .line 26
    :cond_0
    return-void
.end method

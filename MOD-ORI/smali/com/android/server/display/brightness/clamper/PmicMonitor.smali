.class public final Lcom/android/server/display/brightness/clamper/PmicMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentTimestampMillis:J

.field public final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public mLastEnergyConsumed:F

.field public mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mPowerChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda4;

.field public final mPowerMonitorPeriodConfigSecs:J

.field public final mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

.field final mThermalService:Landroid/os/IThermalService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda4;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mLastEnergyConsumed:F

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTimestampMillis:J

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda4;

    .line 12
    .line 13
    const-class p1, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 22
    .line 23
    const-string/jumbo p1, "thermalservice"

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mThermalService:Landroid/os/IThermalService;

    .line 35
    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 41
    .line 42
    int-to-long p1, p2

    .line 43
    iput-wide p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerMonitorPeriodConfigSecs:J

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final start()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 2
    .line 3
    const-string v1, "PmicMonitor"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Power stats service not found for monitoring."

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mThermalService:Landroid/os/IThermalService;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string p0, "Thermal service not found."

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    .line 29
    new-instance v3, Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/PmicMonitor;)V

    .line 32
    .line 33
    .line 34
    iget-wide v6, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerMonitorPeriodConfigSecs:J

    .line 35
    .line 36
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    move-wide v4, v6

    .line 39
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string p0, "already scheduled, stop() called before start."

    .line 47
    .line 48
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

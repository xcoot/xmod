.class public abstract Landroid/os/BatteryStatsInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CPU_WAKEUP_SUBSYSTEM_ALARM:I = 0x1

.field public static final CPU_WAKEUP_SUBSYSTEM_CELLULAR_DATA:I = 0x5

.field public static final CPU_WAKEUP_SUBSYSTEM_SENSOR:I = 0x4

.field public static final CPU_WAKEUP_SUBSYSTEM_SOUND_TRIGGER:I = 0x3

.field public static final CPU_WAKEUP_SUBSYSTEM_UNKNOWN:I = -0x1

.field public static final CPU_WAKEUP_SUBSYSTEM_WIFI:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract getMobileIfaces()[Ljava/lang/String;
.end method

.method public abstract getSystemServiceCpuThreadTimes()Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
.end method

.method public abstract getWifiIfaces()[Ljava/lang/String;
.end method

.method public abstract noteBinderCallStats(IJLjava/util/Collection;)V
.end method

.method public abstract noteBinderThreadNativeIds([I)V
.end method

.method public abstract noteCpuWakingNetworkPacket(Landroid/net/Network;JI)V
.end method

.method public abstract noteJobsDeferred(IIJ)V
.end method

.method public varargs abstract noteWakingAlarmBatch(J[I)V
.end method

.method public abstract noteWakingSoundTrigger(JI)V
.end method

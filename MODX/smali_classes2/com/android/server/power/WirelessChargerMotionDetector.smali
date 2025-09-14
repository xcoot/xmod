.class public final Lcom/android/server/power/WirelessChargerMotionDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mCallbacks:Lcom/android/server/power/PowerManagerService$1;

.field public mIsDeviceMoving:Z

.field public mIsWirelessChargerSContextRegistered:Z

.field public final mLock:Ljava/lang/Object;

.field public mPassedWakeupTime:J

.field public final mWirelessChargerSContextListener:Lcom/android/server/power/WirelessChargerMotionDetector$1;

.field public final mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/BatteryManagerInternal;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/WirelessChargerMotionDetector$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/power/WirelessChargerMotionDetector$1;-><init>(Lcom/android/server/power/WirelessChargerMotionDetector;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mWirelessChargerSContextListener:Lcom/android/server/power/WirelessChargerMotionDetector$1;

    .line 10
    .line 11
    const-string/jumbo v0, "scontext"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Landroid/hardware/scontext/SContextManager;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mCallbacks:Lcom/android/server/power/PowerManagerService$1;

    .line 27
    .line 28
    const-wide/16 p1, 0x0

    .line 29
    .line 30
    iput-wide p1, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mPassedWakeupTime:J

    .line 31
    .line 32
    return-void
.end method

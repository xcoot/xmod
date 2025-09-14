.class public final Lcom/android/server/DeviceIdleController$BatteryLevel;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public curr:F

.field public currTime:J

.field public prev:F

.field public prevTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    .line 7
    .line 8
    iput v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    .line 15
    .line 16
    return-void
.end method

.class Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final temperature:F

.field public final time:J


# direct methods
.method public constructor <init>(JF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    .line 7
    .line 8
    return-void
.end method

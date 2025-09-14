.class public final synthetic Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    .line 2
    .line 3
    check-cast p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroid/hardware/thermal/TemperatureThreshold;

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/hardware/thermal/TemperatureThreshold;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    .line 16
    .line 17
    iget v0, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->type:I

    .line 18
    .line 19
    iput v0, p0, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    .line 20
    .line 21
    iget-object v0, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->coldThrottlingThresholds:[F

    .line 22
    .line 23
    iput-object v0, p0, Landroid/hardware/thermal/TemperatureThreshold;->coldThrottlingThresholds:[F

    .line 24
    .line 25
    iget-object p1, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    .line 26
    .line 27
    iput-object p1, p0, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    .line 28
    .line 29
    return-object p0
.end method

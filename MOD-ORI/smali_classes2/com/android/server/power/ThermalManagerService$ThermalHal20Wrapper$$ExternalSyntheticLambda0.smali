.class public final synthetic Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 2
    .line 3
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Landroid/hardware/thermal/V2_0/CoolingDevice;

    .line 22
    .line 23
    new-instance v0, Landroid/os/CoolingDevice;

    .line 24
    .line 25
    iget-wide v1, p2, Landroid/hardware/thermal/V2_0/CoolingDevice;->value:J

    .line 26
    .line 27
    iget v3, p2, Landroid/hardware/thermal/V2_0/CoolingDevice;->type:I

    .line 28
    .line 29
    iget-object p2, p2, Landroid/hardware/thermal/V2_0/CoolingDevice;->name:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v0, v1, v2, v3, p2}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p2, "Couldn\'t get cooling device because of HAL error: "

    .line 41
    .line 42
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    .line 46
    .line 47
    const-string p2, "ThermalManagerService$ThermalHalWrapper"

    .line 48
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.class public final synthetic Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;


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
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    .line 2
    .line 3
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    .line 4
    .line 5
    const-string v1, "ThermalManagerService$ThermalHalWrapper"

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Landroid/hardware/thermal/V2_0/Temperature;

    .line 24
    .line 25
    iget v0, p2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    .line 26
    .line 27
    invoke-static {v0}, Landroid/os/Temperature;->isValidStatus(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string v0, "Invalid status data from HAL"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput v0, p2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    .line 40
    .line 41
    :cond_0
    new-instance v0, Landroid/os/Temperature;

    .line 42
    .line 43
    iget v2, p2, Landroid/hardware/thermal/V2_0/Temperature;->value:F

    .line 44
    .line 45
    iget v3, p2, Landroid/hardware/thermal/V2_0/Temperature;->type:I

    .line 46
    .line 47
    iget-object v4, p2, Landroid/hardware/thermal/V2_0/Temperature;->name:Ljava/lang/String;

    .line 48
    .line 49
    iget p2, p2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    .line 50
    .line 51
    invoke-direct {v0, v2, v3, v4, p2}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p2, "Couldn\'t get temperatures because of HAL error: "

    .line 61
    .line 62
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {p0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

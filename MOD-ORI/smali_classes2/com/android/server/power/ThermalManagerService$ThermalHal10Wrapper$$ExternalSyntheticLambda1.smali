.class public final synthetic Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;IZI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$0:Z

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$0:Z

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$1:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    .line 11
    .line 12
    iget v2, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Landroid/hardware/thermal/V1_0/Temperature;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget v2, p2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    .line 35
    .line 36
    if-eq v1, v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v2, Landroid/os/Temperature;

    .line 40
    .line 41
    iget v3, p2, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    .line 42
    .line 43
    iget v4, p2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    .line 44
    .line 45
    iget-object p2, p2, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-direct {v2, v3, v4, p2, v5}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p2, "Couldn\'t get temperatures because of HAL error: "

    .line 58
    .line 59
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    .line 63
    .line 64
    const-string p2, "ThermalManagerService$ThermalHalWrapper"

    .line 65
    .line 66
    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void

    .line 70
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$0:Z

    .line 71
    .line 72
    iget v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$1:I

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    .line 75
    .line 76
    iget v2, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    .line 77
    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_5

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Landroid/hardware/thermal/V1_0/Temperature;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iget v2, p2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    .line 99
    .line 100
    if-eq v1, v2, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    new-instance v2, Landroid/os/Temperature;

    .line 104
    .line 105
    iget v3, p2, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    .line 106
    .line 107
    iget v4, p2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    .line 108
    .line 109
    iget-object p2, p2, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    .line 110
    .line 111
    const/4 v5, 0x0

    .line 112
    invoke-direct {v2, v3, v4, p2, v5}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string p2, "Couldn\'t get temperatures because of HAL error: "

    .line 122
    .line 123
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    .line 127
    .line 128
    const-string p2, "ThermalManagerService$ThermalHalWrapper"

    .line 129
    .line 130
    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

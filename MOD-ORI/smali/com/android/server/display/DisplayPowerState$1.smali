.class public final Lcom/android/server/display/DisplayPowerState$1;
.super Landroid/util/FloatProperty;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/DisplayPowerState$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/DisplayPowerState$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/display/DisplayPowerState;

    .line 7
    .line 8
    iget p0, p1, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p1, Lcom/android/server/display/DisplayPowerState;

    .line 16
    .line 17
    iget p0, p1, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_1
    check-cast p1, Lcom/android/server/display/DisplayPowerState;

    .line 25
    .line 26
    iget p0, p1, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/display/DisplayPowerState$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/display/DisplayPowerState;

    .line 7
    .line 8
    iget p0, p1, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    .line 9
    .line 10
    cmpl-float p0, p0, p2

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    sget-boolean p0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v0, "setSdrScreenBrightness: brightness="

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "DisplayPowerState"

    .line 34
    .line 35
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    iput p2, p1, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    .line 39
    .line 40
    iget p0, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 41
    .line 42
    const/4 p2, 0x1

    .line 43
    if-eq p0, p2, :cond_1

    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    iput-boolean p0, p1, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :pswitch_0
    check-cast p1, Lcom/android/server/display/DisplayPowerState;

    .line 53
    .line 54
    iget p0, p1, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 55
    .line 56
    cmpl-float p0, p0, p2

    .line 57
    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    sget-boolean p0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 61
    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string/jumbo v0, "setScreenBrightness: brightness="

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v0, "DisplayPowerState"

    .line 80
    .line 81
    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_2
    iput p2, p1, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 85
    .line 86
    iget p0, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 87
    .line 88
    const/4 p2, 0x1

    .line 89
    if-eq p0, p2, :cond_3

    .line 90
    .line 91
    const/4 p0, 0x0

    .line 92
    iput-boolean p0, p1, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void

    .line 98
    :pswitch_1
    check-cast p1, Lcom/android/server/display/DisplayPowerState;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

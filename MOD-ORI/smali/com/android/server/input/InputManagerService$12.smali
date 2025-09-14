.class public final Lcom/android/server/input/InputManagerService$12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$12;->this$0:Lcom/android/server/input/InputManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget p1, p1, v0

    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$12;->this$0:Lcom/android/server/input/InputManagerService;

    .line 7
    .line 8
    iget v2, v1, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    sget-object v4, Lcom/android/server/input/InputManagerService;->mLowHysteresis:[F

    .line 14
    .line 15
    aget v4, v4, v2

    .line 16
    .line 17
    cmpg-float v4, p1, v4

    .line 18
    .line 19
    if-gez v4, :cond_0

    .line 20
    .line 21
    add-int/lit8 v2, v2, -0x1

    .line 22
    .line 23
    iput v2, v1, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    .line 24
    .line 25
    move v0, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$12;->this$0:Lcom/android/server/input/InputManagerService;

    .line 28
    .line 29
    iget v2, v1, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    if-ge v2, v4, :cond_1

    .line 33
    .line 34
    sget-object v4, Lcom/android/server/input/InputManagerService;->mHighHysteresis:[F

    .line 35
    .line 36
    aget v4, v4, v2

    .line 37
    .line 38
    cmpl-float v4, p1, v4

    .line 39
    .line 40
    if-lez v4, :cond_1

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    iput v2, v1, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    .line 45
    .line 46
    move v0, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    if-eqz v0, :cond_2

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v1, "mFoldingAngleListener: state changed, angle = "

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, ", state = "

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$12;->this$0:Lcom/android/server/input/InputManagerService;

    .line 67
    .line 68
    iget p1, p1, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    .line 69
    .line 70
    const-string v1, "InputManager"

    .line 71
    .line 72
    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$12;->this$0:Lcom/android/server/input/InputManagerService;

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 78
    .line 79
    iget p0, p0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    .line 80
    .line 81
    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setFoldingState(I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    return-void
.end method

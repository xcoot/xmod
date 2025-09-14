.class public final Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/hardware/input/IInputSensorEventListener;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputSensorEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    .line 6
    iput p2, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    .line 8
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    .line 10
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "Sensor event listener for pid "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget v1, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    .line 14
    const-string v2, " died."

    .line 16
    const-string v3, "InputManager"

    .line 18
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    .line 23
    iget p0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    .line 25
    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->onSensorEventListenerDied(I)V

    .line 28
    return-void
.end method

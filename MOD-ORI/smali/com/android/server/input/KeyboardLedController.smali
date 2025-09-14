.class public final Lcom/android/server/input/KeyboardLedController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public final mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

.field public final mMicrophoneMuteChangedIntentReceiver:Lcom/android/server/input/KeyboardLedController$1;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/input/KeyboardLedController;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/NativeInputManagerService$NativeImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/input/KeyboardLedController$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/input/KeyboardLedController$1;-><init>(Lcom/android/server/input/KeyboardLedController;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mMicrophoneMuteChangedIntentReceiver:Lcom/android/server/input/KeyboardLedController$1;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/android/server/input/KeyboardLedController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 21
    .line 22
    new-instance p1, Landroid/os/Handler;

    .line 23
    .line 24
    new-instance p3, Lcom/android/server/input/KeyboardLedController$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-direct {p3, p0}, Lcom/android/server/input/KeyboardLedController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyboardLedController;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    .line 33
    .line 34
    return-void
.end method

.method public static getKeyboardMicMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getLightsManager()Landroid/hardware/lights/LightsManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/hardware/lights/Light;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/hardware/lights/Light;->getType()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v2, 0x2714

    .line 30
    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/hardware/lights/Light;->hasBrightnessControl()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLedController;->onInputDeviceChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/android/server/input/KeyboardLedController;->getKeyboardMicMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

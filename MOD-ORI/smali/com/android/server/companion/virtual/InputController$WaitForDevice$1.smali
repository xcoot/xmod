.class public final Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

.field public final synthetic val$associatedDisplayId:I

.field public final synthetic val$deviceName:Ljava/lang/String;

.field public final synthetic val$productId:I

.field public final synthetic val$vendorId:I


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/InputController$WaitForDevice;Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$deviceName:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$vendorId:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$productId:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$associatedDisplayId:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->onInputDeviceChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Newly added input device was null."

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$deviceName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget v3, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$vendorId:I

    .line 36
    .line 37
    if-ne v2, v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget v2, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$productId:I

    .line 44
    .line 45
    if-eq v1, v2, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->getAssociatedDisplayId()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget v1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->val$associatedDisplayId:I

    .line 53
    .line 54
    if-ne v0, v1, :cond_2

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice$1;->this$1:Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    .line 57
    .line 58
    iput p1, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mInputDeviceId:I

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->mDeviceAddedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

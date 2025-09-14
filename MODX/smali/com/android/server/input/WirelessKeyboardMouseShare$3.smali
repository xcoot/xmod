.class public final Lcom/android/server/input/WirelessKeyboardMouseShare$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$3;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 1
    const/16 v0, 0x13

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string p1, "WirelessKeyboardMouseShare"

    .line 8
    const-string v0, "Profile proxy connected"

    .line 10
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$3;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 15
    check-cast p2, Landroid/bluetooth/BluetoothHidDevice;

    .line 17
    iput-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 19
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 29
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 0

    .line 1
    const/16 p0, 0x13

    .line 3
    if-eq p1, p0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "WirelessKeyboardMouseShare"

    .line 8
    const-string p1, "Profile proxy disconnected"

    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void
.end method

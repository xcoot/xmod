.class public final Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbacks:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;

.field public final mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public final synthetic this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "input"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/server/input/InputManagerService;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mCallbacks:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string/jumbo p1, "status"

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 25
    .line 26
    iget v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 27
    .line 28
    or-int/lit8 v0, v0, 0x40

    .line 29
    .line 30
    iput v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 31
    .line 32
    invoke-static {p2}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->-$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p2, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 37
    .line 38
    iget v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 39
    .line 40
    and-int/lit8 v0, v0, -0x49

    .line 41
    .line 42
    iput v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 43
    .line 44
    :goto_0
    const-string/jumbo p2, "onReceive: PogoKeyboard connected="

    .line 45
    .line 46
    .line 47
    const-string v0, ", keyboardState="

    .line 48
    .line 49
    invoke-static {p2, v0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 54
    .line 55
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 56
    .line 57
    const-string p2, "InputMethodManagerServicePhysicalKey"

    .line 58
    .line 59
    invoke-static {p1, p0, p2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

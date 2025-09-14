.class public final Lcom/android/server/inputmethod/InputMethodManagerService$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic val$im:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/hardware/input/InputManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->val$im:Landroid/hardware/input/InputManager;

    .line 8
    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->val$im:Landroid/hardware/input/InputManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addStylusDeviceIdLocked(I)V

    .line 23
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0

    .line 28
    :cond_0
    :goto_0
    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->val$im:Landroid/hardware/input/InputManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addStylusDeviceIdLocked(I)V

    .line 24
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 31
    monitor-enter v0

    .line 32
    :try_start_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeStylusDeviceIdLocked(I)V

    .line 37
    monitor-exit v0

    .line 38
    :goto_0
    return-void

    .line 39
    :catchall_1
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    throw p0
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeStylusDeviceIdLocked(I)V

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.class public final Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public keyboardState:I

.field public mBTKeyboardCount:I

.field public mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

.field public mUSBKeyboardCount:I

.field public mUSBKeyboardCountOld:I


# direct methods
.method public static -$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string p0, "InputMethodManagerService"

    .line 9
    .line 10
    const-string v1, "HW Keyboard connected"

    .line 11
    .line 12
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/16 v5, 0x38

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v0, v5, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IZ)Landroid/view/inputmethod/ImeTracker$Token;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v0
.end method


# virtual methods
.method public final isPogoBackfolded()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x8

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    const-string/jumbo v0, "isPogoBackfolded "

    .line 11
    .line 12
    .line 13
    const-string v1, "InputMethodManagerServicePhysicalKey"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return p0
.end method

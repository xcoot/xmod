.class public final Lcom/android/server/inputmethod/InputMethodManagerInternal$1;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getInputMethodListAsUser(I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final hideAllInputMethods(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final maybeFinishStylusHandwriting()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onImeParentChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSessionForAccessibilityCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSwitchKeyboardLayoutShortcut(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final removeImeSurface()V
    .locals 0

    .line 1
    return-void
.end method

.method public final reportImeControl(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setInputMethodEnabled(ILjava/lang/String;Z)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final setInteractive(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final switchToInputMethod(ILjava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final transferTouchFocusToImeWindow(ILandroid/os/IBinder;I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final unbindAccessibilityFromCurrentClient(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateImeWindowStatus(Z)V
    .locals 0

    .line 1
    return-void
.end method

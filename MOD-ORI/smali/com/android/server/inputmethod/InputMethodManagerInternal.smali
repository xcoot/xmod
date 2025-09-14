.class public abstract Lcom/android/server/inputmethod/InputMethodManagerInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerInternal$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;->NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal$1;

    .line 7
    .line 8
    return-void
.end method

.method public static get()Lcom/android/server/inputmethod/InputMethodManagerInternal;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;->NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal$1;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract getEnabledInputMethodListAsUser(I)Ljava/util/List;
.end method

.method public abstract getInputMethodListAsUser(I)Ljava/util/List;
.end method

.method public abstract hideAllInputMethods(I)V
.end method

.method public abstract maybeFinishStylusHandwriting()V
.end method

.method public abstract onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;)V
.end method

.method public abstract onImeParentChanged()V
.end method

.method public abstract onSessionForAccessibilityCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
.end method

.method public abstract onSwitchKeyboardLayoutShortcut(I)V
.end method

.method public abstract removeImeSurface()V
.end method

.method public abstract reportImeControl(Landroid/os/IBinder;)V
.end method

.method public abstract setInputMethodEnabled(ILjava/lang/String;Z)Z
.end method

.method public abstract setInteractive(Z)V
.end method

.method public abstract setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V
.end method

.method public abstract switchToInputMethod(ILjava/lang/String;)Z
.end method

.method public abstract transferTouchFocusToImeWindow(ILandroid/os/IBinder;I)Z
.end method

.method public abstract unbindAccessibilityFromCurrentClient(I)V
.end method

.method public abstract updateImeWindowStatus(Z)V
.end method

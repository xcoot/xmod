.class public final Lcom/android/server/inputmethod/IInputMethodManagerImpl;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 6
    return-void
.end method


# virtual methods
.method public final acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-interface/range {v0 .. v5}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-interface/range {v0 .. v6}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V

    .line 12
    return-void
.end method

.method public final addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V

    .line 6
    return-void
.end method

.method public final addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->addVirtualStylusIdForTestSession_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 6
    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 9
    return-void
.end method

.method public final dismissAndShowAgainInputMethodPicker()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->dismissAndShowAgainInputMethodPicker()V

    .line 6
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final getCurTokenDisplayId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getCurTokenDisplayId()I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getCurrentFocusDisplayID()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getCurrentFocusDisplayID()I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getEnabledInputMethodListLegacy(I)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodListLegacy(I)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getImeTrackerService()Lcom/android/internal/inputmethod/IImeTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getImeTrackerService()Lcom/android/server/inputmethod/ImeTrackerService;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getInputMethodListLegacy(II)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodListLegacy(II)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getWACOMPen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->getWACOMPen()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final handleVoiceHWKey()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->handleVoiceHWKey()V

    .line 6
    return-void
.end method

.method public final hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move v6, p6

    .line 9
    move v7, p7

    .line 10
    invoke-interface/range {v0 .. v7}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final hideSoftInputFromServerForTest()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInputFromServerForTest_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 6
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->hideSoftInputFromServerForTest()V

    .line 9
    return-void
.end method

.method public final isAccessoryKeyboard()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isAccessoryKeyboard()I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isCurrentInputMethodAsSamsungKeyboard()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isCurrentInputMethodAsSamsungKeyboard()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isImeTraceEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isImeTraceEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isInputMethodPickerShownForTest()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodPickerShownForTest_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 6
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isInputMethodPickerShownForTest()Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final isInputMethodShown()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isInputMethodShown()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isStylusHandwritingAvailableAsUser(IZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->isStylusHandwritingAvailableAsUser(IZ)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final minimizeSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->minimizeSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    move-object v7, p0

    .line 10
    invoke-interface/range {v0 .. v7}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V

    .line 13
    return-void
.end method

.method public final prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final removeImeSurface()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurface_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 6
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->removeImeSurface()V

    .line 9
    return-void
.end method

.method public final removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    .line 6
    return-void
.end method

.method public final reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    .line 6
    return-void
.end method

.method public final setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V

    .line 6
    return-void
.end method

.method public final setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V

    .line 6
    return-void
.end method

.method public final setInputMethodSwitchDisable(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setInputMethodSwitchDisable(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V

    .line 6
    return-void
.end method

.method public final setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->setStylusWindowIdleTimeoutForTest_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 6
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V

    .line 9
    return-void
.end method

.method public final showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V

    .line 6
    return-void
.end method

.method public final showInputMethodPickerFromSystem(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystem_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 6
    invoke-interface {p0, p1, p2}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showInputMethodPickerFromSystem(II)V

    .line 9
    return-void
.end method

.method public final showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    move-object v6, p6

    .line 10
    move/from16 v7, p7

    .line 12
    move/from16 v8, p8

    .line 14
    invoke-interface/range {v0 .. v8}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-interface/range {v0 .. v6}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    .line 12
    return-void
.end method

.method public final startImeTrace()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startImeTrace_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 6
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startImeTrace()V

    .line 9
    return-void
.end method

.method public final startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 4
    move v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    move/from16 v4, p4

    .line 10
    move/from16 v5, p5

    .line 12
    move/from16 v6, p6

    .line 14
    move-object/from16 v7, p7

    .line 16
    move-object/from16 v8, p8

    .line 18
    move-object/from16 v9, p9

    .line 20
    move/from16 v10, p10

    .line 22
    move/from16 v11, p11

    .line 24
    move-object/from16 v12, p12

    .line 26
    invoke-interface/range {v0 .. v12}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;IZ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 4
    move v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move/from16 v4, p4

    .line 11
    move/from16 v5, p5

    .line 13
    move/from16 v6, p6

    .line 15
    move-object/from16 v7, p7

    .line 17
    move-object/from16 v8, p8

    .line 19
    move-object/from16 v9, p9

    .line 21
    move/from16 v10, p10

    .line 23
    move/from16 v11, p11

    .line 25
    move-object/from16 v12, p12

    .line 27
    move/from16 v13, p13

    .line 29
    invoke-interface/range {v0 .. v13}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;I)V

    .line 32
    return-void
.end method

.method public final startProtoDump([BILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startProtoDump([BILjava/lang/String;)V

    .line 6
    return-void
.end method

.method public final startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0, p1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 6
    return-void
.end method

.method public final stopImeTrace()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->stopImeTrace_enforcePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 6
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->stopImeTrace()V

    .line 9
    return-void
.end method

.method public final undoMinimizeSoftInput()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodManagerImpl;->mCallback:Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;

    .line 3
    invoke-interface {p0}, Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;->undoMinimizeSoftInput()V

    .line 6
    return-void
.end method

.class public final Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurVisibleImeInputTarget:Landroid/os/IBinder;

.field public mCurVisibleImeLayeringOverlay:Landroid/os/IBinder;

.field public final mImeDisplayValidator:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

.field public mInputShown:Z

.field public final mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

.field public final mRequestWindowStateMap:Ljava/util/WeakHashMap;

.field public mRequestedImeScreenshot:Z

.field public mRequestedShowExplicitly:Z

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public mShowForced:Z

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getWmService()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;->getImeValidator()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    move-result-object p2

    new-instance v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 2
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    .line 6
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 7
    iput-object p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    .line 9
    iput-object p4, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 10
    new-instance p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;

    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;-><init>(Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)V

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowManagerInternal;->setInputMethodTargetChangeListener(Lcom/android/server/wm/ImeTargetChangeListener;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/PrintWriterPrinter;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "  mRequestedShowExplicitly="

    .line 9
    .line 10
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " mShowForced="

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "  mImeHiddenByDisplayPolicy="

    .line 38
    .line 39
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 43
    .line 44
    iget-boolean v1, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "  mInputShown="

    .line 59
    .line 60
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final getWindowTokenFrom(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 2
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 3
    iget-object v2, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestImeToken:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    return-object v1

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    return-object p0
.end method

.method public final getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 6
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onInteractiveChanged(Landroid/os/IBinder;Z)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    .line 23
    .line 24
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    .line 25
    .line 26
    const/4 p1, 0x4

    .line 27
    const/16 p2, 0x22

    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    if-eqz p2, :cond_1

    .line 34
    .line 35
    iget-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    .line 41
    .line 42
    new-instance p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    .line 43
    .line 44
    const/16 p1, 0x8

    .line 45
    .line 46
    const/16 p2, 0x23

    .line 47
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public final requestImeVisibility(Landroid/os/IBinder;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    move-object v1, v0

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;-><init>(IIIZZZ)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 24
    .line 25
    iget-boolean v2, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mPendingA11yRequestingHideKeyboard:Z

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iput-boolean p2, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p2, 0x0

    .line 33
    iput-boolean p2, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mPendingA11yRequestingHideKeyboard:Z

    .line 34
    .line 35
    :goto_0
    new-instance p2, Landroid/os/Binder;

    .line 36
    .line 37
    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p2, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestImeToken:Landroid/os/IBinder;

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setWindowStateInner, windowToken="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", state="

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "InputMethodManagerService"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-void
.end method

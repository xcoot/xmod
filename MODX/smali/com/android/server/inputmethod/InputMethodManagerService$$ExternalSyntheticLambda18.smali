.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;->f$1:Landroid/os/IBinder;

    .line 8
    iput-boolean p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;->f$2:Z

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;->f$1:Landroid/os/IBinder;

    .line 5
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;->f$2:Z

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string/jumbo v2, "windowToken must not be null"

    .line 13
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 18
    monitor-enter v2

    .line 19
    :try_start_0
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    .line 21
    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/Boolean;

    .line 27
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 29
    iget-object v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 31
    if-ne v4, v1, :cond_1

    .line 33
    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    move-result v4

    .line 39
    if-ne v4, p0, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    iget-object p0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    .line 46
    invoke-virtual {p0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked$1()V

    .line 52
    monitor-exit v2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    monitor-exit v2

    .line 55
    :goto_1
    return-void

    .line 56
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

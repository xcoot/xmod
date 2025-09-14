.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/internal/inputmethod/IInputMethodClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;->f$2:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;->f$2:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    const-string/jumbo v3, "getInputMethodWindowVisibleHeight"

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v0, v1, p0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    monitor-exit v2

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    return-object p0

    .line 48
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

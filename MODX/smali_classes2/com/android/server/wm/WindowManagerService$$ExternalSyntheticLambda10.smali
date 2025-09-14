.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda10;->f$1:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda10;->f$2:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda10;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda10;->f$1:Landroid/os/IBinder;

    .line 4
    .line 5
    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda10;->f$2:Z

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda10;->f$3:Z

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mImeTargetChangeListener:Lcom/android/server/wm/ImeTargetChangeListener;

    .line 10
    .line 11
    check-cast v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;->this$0:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeInputTarget:Landroid/os/IBinder;

    .line 16
    .line 17
    if-ne v2, v7, :cond_1

    .line 18
    .line 19
    if-eqz v8, :cond_0

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeLayeringOverlay:Landroid/os/IBinder;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x6

    .line 33
    const/16 v4, 0x25

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v1, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;->this$0:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const-class v9, Lcom/android/server/inputmethod/ImfLock;

    .line 48
    .line 49
    monitor-enter v9

    .line 50
    :try_start_0
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 51
    .line 52
    iget v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 53
    .line 54
    const/4 v4, 0x5

    .line 55
    const/16 v5, 0x25

    .line 56
    .line 57
    move-object v1, v2

    .line 58
    move-object v2, v7

    .line 59
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    .line 60
    .line 61
    .line 62
    monitor-exit v9

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0

    .line 67
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$1;->this$0:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 68
    .line 69
    if-eqz v8, :cond_2

    .line 70
    .line 71
    if-nez p0, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/4 v7, 0x0

    .line 75
    :goto_1
    iput-object v7, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mCurVisibleImeInputTarget:Landroid/os/IBinder;

    .line 76
    .line 77
    return-void
.end method

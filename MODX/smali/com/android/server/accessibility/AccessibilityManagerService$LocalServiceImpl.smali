.class public final Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;
.super Lcom/android/server/AccessibilityManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final bindInput()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;-><init>(I)V

    .line 11
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    return-void
.end method

.method public final createImeSession(Landroid/util/ArraySet;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 7
    const/16 v2, 0xc

    .line 9
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 12
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    return-void
.end method

.method public final isTouchExplorationEnabled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 11
    move-result-object p0

    .line 12
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final performSystemAction()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/accessibility/AccessibilityManagerService;->SEC_DEBUG:Z

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    .line 8
    move-result-object p0

    .line 9
    const/16 v0, 0xe

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SystemActionPerformer;->performSystemAction(I)Z

    .line 14
    return-void
.end method

.method public final setImeSessionEnabled(Landroid/util/SparseArray;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;

    .line 7
    const/16 v2, 0x8

    .line 9
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object p2

    .line 16
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    return-void
.end method

.method public final startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda14;-><init>(I)V

    .line 11
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object p3

    .line 15
    invoke-static {v1, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    return-void
.end method

.method public final unbindInput()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$LocalServiceImpl;->mService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda38;-><init>(I)V

    .line 11
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    return-void
.end method

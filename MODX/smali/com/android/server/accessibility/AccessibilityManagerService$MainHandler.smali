.class public final Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/16 v1, 0x8

    .line 5
    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    check-cast v0, Landroid/view/KeyEvent;

    .line 11
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 13
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 15
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 20
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 22
    if-eqz v2, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 26
    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0, v0, p1}, Landroid/view/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 38
    goto :goto_2

    .line 39
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0

    .line 41
    :cond_1
    :goto_2
    return-void
.end method

.class public final Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPendingEvent:Landroid/view/accessibility/AccessibilityEvent;

.field public final mWindowId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->mPendingEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->mWindowId:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-string v0, " wait for adding window timeout: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    const-string v2, "AccessibilityManagerService"

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->mWindowId:I

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSendWindowStateChangedEventRunnables:Ljava/util/List;

    .line 30
    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SendWindowStateChangedEventRunnable;->mPendingEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->dispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 41
    .line 42
    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

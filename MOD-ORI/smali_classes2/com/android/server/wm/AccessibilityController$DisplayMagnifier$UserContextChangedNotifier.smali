.class public final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mHasDelayedNotificationForRecentsToFrontTransition:Z

.field public final synthetic this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final sendUserContextChangedNotification()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isFullscreenMagnificationActivated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getVisiblityShortcutDialog()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setVisibilityShortcutDialog(Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHasDelayedNotificationForRecentsToFrontTransition:Z

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

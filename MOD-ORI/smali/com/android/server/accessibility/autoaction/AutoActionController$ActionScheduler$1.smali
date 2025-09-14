.class public final Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

.field public final synthetic val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;->val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p1, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$1;->val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mReceiver:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mAnchorView:Landroid/view/View;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    return-void
.end method

.class public final Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

.field public final synthetic val$actions:[Ljava/lang/String;

.field public final synthetic val$corner:I

.field public final synthetic val$displayId:I

.field public final synthetic val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;[Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$actions:[Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$displayId:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$corner:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$popup:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$actions:[Ljava/lang/String;

    .line 17
    .line 18
    aget-object p1, v2, p1

    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$displayId:I

    .line 21
    .line 22
    iget v3, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->val$corner:I

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->performCornerAction(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 31
    .line 32
    iget v0, p1, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    const/4 v2, 0x0

    .line 36
    if-ne v0, v1, :cond_0

    .line 37
    .line 38
    iget-boolean v0, p1, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mIsPauseAutoClick:Z

    .line 39
    .line 40
    xor-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$2;->this$1:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 46
    .line 47
    iput v2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionType:I

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    new-instance v0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler$3;-><init>(Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    :cond_0
    return v2
.end method

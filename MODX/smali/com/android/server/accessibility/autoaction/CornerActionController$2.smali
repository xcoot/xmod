.class public final Lcom/android/server/accessibility/autoaction/CornerActionController$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 3
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 6
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$2;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 8
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 10
    const v0, 0x10402c6

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    const/16 v0, 0x10

    .line 19
    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 25
    return-void
.end method

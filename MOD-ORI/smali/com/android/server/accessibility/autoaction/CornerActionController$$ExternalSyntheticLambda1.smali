.class public final synthetic Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;->f$1:[Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;->f$1:[Z

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-boolean v2, p0, v1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    .line 18
    .line 19
    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    .line 24
    .line 25
    aput-boolean v1, p0, v1

    .line 26
    .line 27
    :cond_0
    return-void
.end method

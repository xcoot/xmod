.class public final synthetic Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

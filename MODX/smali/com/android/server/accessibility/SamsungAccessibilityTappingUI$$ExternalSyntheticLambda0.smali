.class public final synthetic Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 5
    iput-boolean p2, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 8
    iget-boolean p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;->f$1:Z

    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x8

    .line 13
    if-eqz p0, :cond_0

    .line 15
    iget-object p0, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    .line 17
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object p0, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object p0, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 39
    iget-boolean p0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;->f$1:Z

    .line 41
    if-eqz p0, :cond_1

    .line 43
    iget-object p0, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object p0, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 52
    const/16 v0, 0x8

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :goto_1
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

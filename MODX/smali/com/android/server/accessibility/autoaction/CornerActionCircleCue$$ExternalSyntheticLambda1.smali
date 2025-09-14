.class public final synthetic Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 6
    iput p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;->f$1:F

    .line 8
    iput p3, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;->f$2:F

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 3
    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;->f$1:F

    .line 5
    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda1;->f$2:F

    .line 7
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDisplay:Landroid/view/Display;

    .line 9
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x3

    .line 14
    if-ne v2, v3, :cond_0

    .line 16
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 18
    float-to-int v1, v1

    .line 19
    iget v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWidth:I

    .line 21
    div-int/lit8 v3, v3, 0x2

    .line 23
    sub-int/2addr v1, v3

    .line 24
    iget v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mNavigationBarHeight:I

    .line 26
    sub-int/2addr v1, v3

    .line 27
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 32
    float-to-int v1, v1

    .line 33
    iget v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWidth:I

    .line 35
    div-int/lit8 v3, v3, 0x2

    .line 37
    sub-int/2addr v1, v3

    .line 38
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 40
    :goto_0
    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 42
    float-to-int p0, p0

    .line 43
    iget v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWidth:I

    .line 45
    div-int/lit8 v2, v2, 0x2

    .line 47
    sub-int/2addr p0, v2

    .line 48
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 50
    iget-object p0, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mWindowManager:Landroid/view/WindowManager;

    .line 52
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mView:Landroid/view/View;

    .line 54
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    return-void
.end method

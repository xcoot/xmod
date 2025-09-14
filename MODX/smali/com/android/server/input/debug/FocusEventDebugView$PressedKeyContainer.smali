.class public final Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;
.super Landroid/widget/LinearLayout;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPressedKeyLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    move-result-object p1

    .line 12
    const/high16 v0, 0x41800000    # 16.0f

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 18
    move-result p1

    .line 19
    float-to-int p1, p1

    .line 20
    new-instance v0, Landroid/animation/LayoutTransition;

    .line 22
    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 36
    const-wide/16 v2, 0x64

    .line 38
    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 44
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 46
    const/4 v2, -0x2

    .line 47
    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 50
    iput-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;->mPressedKeyLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 55
    move-result p0

    .line 56
    const/4 v2, 0x0

    .line 57
    if-ne p0, v1, :cond_0

    .line 59
    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 66
    :goto_0
    return-void
.end method

.class public final synthetic Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 3
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 9
    move-result v3

    .line 10
    if-ge v1, v3, :cond_1

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    cmpl-float v4, v4, v5

    .line 23
    if-eqz v4, :cond_0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/16 v4, 0x8

    .line 28
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 42
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 45
    return-void
.end method

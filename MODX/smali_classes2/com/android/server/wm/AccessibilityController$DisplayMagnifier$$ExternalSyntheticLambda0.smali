.class public final synthetic Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

.field public final synthetic f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseArray;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseArray;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    cmpl-float v1, v1, v2

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempLayer:I

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    iput v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempLayer:I

    .line 36
    .line 37
    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

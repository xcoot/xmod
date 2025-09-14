.class public final synthetic Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Matrix;

.field public final synthetic f$1:Landroid/graphics/Matrix;

.field public final synthetic f$2:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Region;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Matrix;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Matrix;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Region;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Matrix;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Region;

    .line 6
    .line 7
    check-cast p1, Landroid/graphics/Rect;

    .line 8
    .line 9
    new-instance v2, Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Rect;

    .line 21
    .line 22
    iget v0, v2, Landroid/graphics/RectF;->left:F

    .line 23
    .line 24
    float-to-int v0, v0

    .line 25
    iget v1, v2, Landroid/graphics/RectF;->top:F

    .line 26
    .line 27
    float-to-int v1, v1

    .line 28
    iget v3, v2, Landroid/graphics/RectF;->right:F

    .line 29
    .line 30
    float-to-int v3, v3

    .line 31
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 32
    .line 33
    float-to-int v2, v2

    .line 34
    invoke-direct {p1, v0, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

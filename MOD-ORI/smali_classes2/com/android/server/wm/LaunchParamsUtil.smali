.class public abstract Lcom/android/server/wm/LaunchParamsUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TMP_STABLE_BOUNDS:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/wm/LaunchParamsUtil;->TMP_STABLE_BOUNDS:Landroid/graphics/Rect;

    .line 7
    .line 8
    return-void
.end method

.method public static centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    div-int/lit8 v0, p1, 0x2

    .line 15
    .line 16
    sub-int/2addr p0, v0

    .line 17
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    div-int/lit8 v1, p2, 0x2

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    add-int/2addr p1, p0

    .line 25
    add-int/2addr p2, v0

    .line 26
    invoke-virtual {p3, p0, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

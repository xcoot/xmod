.class public abstract Lcom/android/server/accessibility/gestures/GestureUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {v0, p0, v1, p1}, Landroid/util/MathUtils;->dist(FFFF)F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    float-to-double p0, p0

    .line 22
    return-wide p0
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const v0, 0xff00

    .line 6
    .line 7
    .line 8
    and-int/2addr p0, v0

    .line 9
    shr-int/lit8 p0, p0, 0x8

    .line 10
    .line 11
    return p0
.end method

.class public final Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public adjustedBrightness:Landroid/util/MutableFloat;

.field public brightness:Landroid/util/MutableFloat;

.field public brightnessMax:Landroid/util/MutableFloat;

.field public brightnessMaxReason:Landroid/util/MutableInt;

.field public brightnessMin:Landroid/util/MutableFloat;

.field public hbmMode:Landroid/util/MutableInt;

.field public hbmTransitionPoint:Landroid/util/MutableFloat;

.field public isAnimating:Landroid/util/MutableBoolean;


# direct methods
.method public static checkAndSetFloat(Landroid/util/MutableFloat;F)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/util/MutableFloat;->value:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Landroid/util/MutableFloat;->value:F

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

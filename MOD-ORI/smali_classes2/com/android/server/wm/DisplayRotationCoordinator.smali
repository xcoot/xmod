.class public final Lcom/android/server/wm/DisplayRotationCoordinator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDefaultDisplayCurrentRotation:I

.field public mDefaultDisplayDefaultRotation:I

.field mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;


# direct methods
.method public static isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 8
    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    move v1, v0

    .line 20
    :cond_2
    return v1
.end method

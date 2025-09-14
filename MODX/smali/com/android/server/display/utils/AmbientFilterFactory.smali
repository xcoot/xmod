.class public abstract Lcom/android/server/display/utils/AmbientFilterFactory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static createBrightnessFilter(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;
    .locals 4

    .line 1
    const v0, 0x10e008b

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 7
    move-result v0

    .line 8
    new-instance v1, Landroid/util/TypedValue;

    .line 10
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 13
    const/4 v2, 0x1

    .line 14
    const v3, 0x10500e1

    .line 17
    invoke-virtual {p0, v3, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 20
    iget p0, v1, Landroid/util/TypedValue;->type:I

    .line 22
    const/4 v2, 0x4

    .line 23
    if-eq p0, v2, :cond_0

    .line 25
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    .line 31
    move-result p0

    .line 32
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 38
    new-instance v1, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 40
    invoke-direct {v1, p1, p0, v0}, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;-><init>(Ljava/lang/String;FI)V

    .line 43
    return-object v1

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 46
    const-string/jumbo p1, "missing configurations: expected config_displayWhiteBalanceBrightnessFilterIntercept"

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
.end method

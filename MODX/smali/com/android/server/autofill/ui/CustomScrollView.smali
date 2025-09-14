.class public Lcom/android/server/autofill/ui/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAttrBasedMaxHeightPercent:I

.field public mHeight:I

.field public mMaxLandscapeBodyHeightPercent:I

.field public mMaxPortraitBodyHeightPercent:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 3
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/CustomScrollView;->setMaxBodyHeightPercent(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 6
    iput p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 7
    iput p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/CustomScrollView;->setMaxBodyHeightPercent(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 10
    iput p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 11
    iput p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/CustomScrollView;->setMaxBodyHeightPercent(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, -0x1

    .line 14
    iput p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 15
    iput p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/ui/CustomScrollView;->setMaxBodyHeightPercent(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    .line 7
    move-result p2

    .line 8
    const-string v0, "CustomScrollView"

    .line 10
    if-nez p2, :cond_0

    .line 12
    const-string/jumbo p0, "no children"

    .line 15
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 25
    iget p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 27
    const/4 p2, -0x1

    .line 28
    if-eq p1, p2, :cond_1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    new-instance p1, Landroid/graphics/Point;

    .line 33
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 36
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 55
    move-result p2

    .line 56
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 58
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    move-result-object v1

    .line 66
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 68
    const/4 v2, 0x2

    .line 69
    if-ne v1, v2, :cond_2

    .line 71
    iget v1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mMaxLandscapeBodyHeightPercent:I

    .line 73
    mul-int/2addr v1, p1

    .line 74
    div-int/lit8 v1, v1, 0x64

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget v1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mMaxPortraitBodyHeightPercent:I

    .line 79
    mul-int/2addr v1, p1

    .line 80
    div-int/lit8 v1, v1, 0x64

    .line 82
    :goto_0
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 88
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 90
    if-eqz p1, :cond_3

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v2, "calculateDimensions(): mMaxPortraitBodyHeightPercent="

    .line 97
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    iget v2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mMaxPortraitBodyHeightPercent:I

    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v2, ", mMaxLandscapeBodyHeightPercent="

    .line 107
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mMaxLandscapeBodyHeightPercent:I

    .line 112
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v2, ", mAttrBasedMaxHeightPercent="

    .line 117
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mAttrBasedMaxHeightPercent:I

    .line 122
    const-string v3, ", maxHeight="

    .line 124
    const-string v4, ", contentHeight="

    .line 126
    invoke-static {v2, v1, v3, v4, p1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 129
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string p2, ", w="

    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string p2, ", h="

    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 149
    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 152
    :cond_3
    :goto_1
    iget p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 154
    iget p2, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 156
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->setMeasuredDimension(II)V

    .line 159
    return-void
.end method

.method public final setMaxBodyHeightPercent(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 9
    move-result-object p1

    .line 10
    const v1, 0x1120017

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 17
    const/high16 p1, 0x42c80000    # 100.0f

    .line 19
    invoke-virtual {v0, p1, p1}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 22
    move-result p1

    .line 23
    float-to-int p1, p1

    .line 24
    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mAttrBasedMaxHeightPercent:I

    .line 26
    const-string v0, "autofill_save_dialog_portrait_body_height_max_percent"

    .line 28
    const-string v1, "autofill"

    .line 30
    invoke-static {v1, v0, p1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mMaxPortraitBodyHeightPercent:I

    .line 36
    const-string p1, "autofill_save_dialog_landscape_body_height_max_percent"

    .line 38
    iget v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mAttrBasedMaxHeightPercent:I

    .line 40
    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mMaxLandscapeBodyHeightPercent:I

    .line 46
    return-void
.end method

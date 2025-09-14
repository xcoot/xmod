.class public final Lcom/android/server/input/debug/RotaryInputValueView;
.super Landroid/widget/TextView;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTIVE_BACKGROUND_FILTER:Landroid/graphics/ColorFilter;


# instance fields
.field public final mDefaultLocale:Ljava/util/Locale;

.field public final mScaledVerticalScrollFactor:F

.field public final mUpdateActivityStatusCallback:Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    .line 3
    const/16 v1, 0x14

    .line 5
    new-array v1, v1, [F

    .line 7
    fill-array-data v1, :array_0

    .line 10
    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 13
    sput-object v0, Lcom/android/server/input/debug/RotaryInputValueView;->ACTIVE_BACKGROUND_FILTER:Landroid/graphics/ColorFilter;

    .line 15
    return-void

    .line 16
    nop

    .line 17
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x43480000    # 200.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/RotaryInputValueView;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mUpdateActivityStatusCallback:Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mDefaultLocale:Ljava/util/Locale;

    .line 17
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mScaledVerticalScrollFactor:F

    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/RotaryInputValueView;->getFormattedValue(F)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const p1, -0xff01

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    const/16 p1, 0x8

    .line 53
    int-to-float p1, p1

    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 58
    move-result p1

    .line 59
    float-to-int p1, p1

    .line 60
    int-to-float p1, p1

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 64
    const/4 p1, 0x4

    .line 65
    int-to-float p1, p1

    .line 66
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 69
    move-result v2

    .line 70
    float-to-int v2, v2

    .line 71
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 74
    move-result p1

    .line 75
    float-to-int p1, p1

    .line 76
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v2, v0, p1, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 80
    const/4 p1, 0x0

    .line 81
    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 85
    const p1, 0x108035e

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 91
    return-void
.end method


# virtual methods
.method public final getFormattedValue(F)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputValueView;->mDefaultLocale:Ljava/util/Locale;

    .line 3
    const/4 v0, 0x0

    .line 4
    cmpg-float v0, p1, v0

    .line 6
    if-gez v0, :cond_0

    .line 8
    const-string v0, "-"

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "+"

    .line 13
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    move-result-object p1

    .line 21
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    const-string v0, "%s%.1f"

    .line 27
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

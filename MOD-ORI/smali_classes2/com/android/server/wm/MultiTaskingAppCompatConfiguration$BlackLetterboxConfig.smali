.class public Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;
.super Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BLACK_COLOR:Landroid/graphics/Color;

.field public static final LETTERBOX_ACTIVITY_CORNERS_RADIUS_DP:I


# instance fields
.field public final mDisplay:Lcom/android/server/wm/DisplayContent;

.field public mLetterboxActivityCornersRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, -0x1000000

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->BLACK_COLOR:Landroid/graphics/Color;

    .line 8
    .line 9
    const/16 v0, 0xf

    .line 10
    .line 11
    sput v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->LETTERBOX_ACTIVITY_CORNERS_RADIUS_DP:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mLetterboxActivityCornersRadius:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getLetterboxActivityCornersRadius()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mLetterboxActivityCornersRadius:I

    .line 2
    .line 3
    return p0
.end method

.method public final getLetterboxBackgroundColor()Landroid/graphics/Color;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->BLACK_COLOR:Landroid/graphics/Color;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLetterboxBackgroundType()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getLetterboxBackgroundWallpaperBlurRadiusPx()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getLetterboxBackgroundWallpaperDarkScrimAlpha()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isPresetConfig()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    sget p1, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->LETTERBOX_ACTIVITY_CORNERS_RADIUS_DP:I

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    float-to-int p1, p1

    .line 24
    iput p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mLetterboxActivityCornersRadius:I

    .line 25
    .line 26
    return-void
.end method

.method public final shouldUseLetterboxBackgroundColor()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->getLetterboxBackgroundType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 14
    :goto_1
    return p0
.end method

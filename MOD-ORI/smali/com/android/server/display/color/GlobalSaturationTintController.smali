.class public final Lcom/android/server/display/color/GlobalSaturationTintController;
.super Lcom/android/server/display/color/TintController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mMatrixGlobalSaturation:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getLevel()I
    .locals 0

    .line 1
    const/16 p0, 0x96

    .line 2
    .line 3
    return p0
.end method

.method public final getMatrix()[F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/color/TintController;->mIsActivationLocked:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "ColorDisplayService"

    .line 6
    .line 7
    const-string v0, "GlobalSaturationTintController: activation lock"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    .line 22
    .line 23
    array-length v0, p0

    .line 24
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

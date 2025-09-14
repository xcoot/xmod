.class public final Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceConfig:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

.field public mPreset:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$Preset;->DEFAULT:I

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mPreset:I

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mDeviceConfig:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 14
    .line 15
    return-void
.end method

.method public static presetToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Unknown("

    .line 10
    .line 11
    const-string v1, ")"

    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "BLACK_LETTERBOX"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string p0, "BLUR_WALLPAPER_LETTERBOX"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    const-string p0, "DEVICE"

    .line 25
    .line 26
    return-object p0
.end method

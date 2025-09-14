.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field mIsVibrationEffectSupportedProvider:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$VibrationEffectSupportedProvider;

.field public final mVibrationEffect:Landroid/os/VibrationEffect;

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 17
    const-class v0, Landroid/os/Vibrator;

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/os/Vibrator;

    .line 25
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrator:Landroid/os/Vibrator;

    .line 27
    new-instance p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$$ExternalSyntheticLambda0;

    .line 29
    invoke-direct {p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;)V

    .line 32
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mIsVibrationEffectSupportedProvider:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$VibrationEffectSupportedProvider;

    .line 34
    return-void
.end method

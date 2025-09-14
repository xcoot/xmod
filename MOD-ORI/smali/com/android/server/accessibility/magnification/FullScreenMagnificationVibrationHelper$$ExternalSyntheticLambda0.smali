.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$VibrationEffectSupportedProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isVibrationEffectSupported()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrator:Landroid/os/Vibrator;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    filled-new-array {v0}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Landroid/os/Vibrator;->areAllEffectsSupported([I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne p0, v1, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    :cond_0
    return v0
.end method

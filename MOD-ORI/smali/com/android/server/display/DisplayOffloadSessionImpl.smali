.class public final Lcom/android/server/display/DisplayOffloadSessionImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

.field public final mDisplayPowerController:Lcom/android/server/display/DisplayPowerControllerInterface;

.field public mIsActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DisplayOffloadSessionImpl"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/DisplayOffloadSessionImpl;->DEBUG:Z

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;Lcom/android/server/display/DisplayPowerControllerInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final allowAutoBrightnessInDoze()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-interface {p0}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;->allowAutoBrightnessInDoze()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final blockScreenOn(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayOffloader:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-interface {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloader;->onBlockingScreenOn(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0
.end method

.method public final getAutoBrightnessLevels(I)[F
    .locals 4

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 7
    .line 8
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, -0x2

    .line 17
    const-string/jumbo v3, "screen_brightness_for_als"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevels(II)[F

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "Unknown auto-brightness mode: "

    .line 34
    .line 35
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final getAutoBrightnessLuxLevels(I)[F
    .locals 4

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 7
    .line 8
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, -0x2

    .line 17
    const-string/jumbo v3, "screen_brightness_for_als"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getAutoBrightnessBrighteningLevelsLux(II)[F

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "Unknown auto-brightness mode: "

    .line 34
    .line 35
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final getBrightness()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getDozeBrightness()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    .line 12
    .line 13
    mul-float/2addr v0, p0

    .line 14
    return v0
.end method

.method public final isActive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setDozeStateOverride(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "New offload doze override: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "DisplayPowerController2"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;

    .line 32
    .line 33
    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/DisplayPowerController;I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final updateBrightness(F)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mIsActive:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/display/DisplayOffloadSessionImpl;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 6
    .line 7
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 18
    .line 19
    const/16 v2, 0x11

    .line 20
    .line 21
    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda11;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

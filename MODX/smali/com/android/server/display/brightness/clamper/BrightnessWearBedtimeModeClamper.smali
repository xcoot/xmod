.class public final Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;
.super Lcom/android/server/display/brightness/clamper/BrightnessClamper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSettingsObserver:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$1;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$Injector;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$WearBedtimeModeData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p4}, Lcom/android/server/display/brightness/clamper/BrightnessClamper;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;)V

    .line 4
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;->mContext:Landroid/content/Context;

    .line 6
    check-cast p5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 8
    iget-object p4, p5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 10
    iget p4, p4, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    .line 12
    iput p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mBrightnessCap:F

    .line 14
    new-instance p4, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$1;

    .line 16
    invoke-direct {p4, p0, p2}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;Landroid/os/Handler;)V

    .line 19
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;->mSettingsObserver:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$1;

    .line 21
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const-string p1, "bedtime_mode"

    .line 30
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    move-result-object p1

    .line 34
    const/4 p2, 0x0

    .line 35
    const/4 p3, -0x1

    .line 36
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public final getType()Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;->WEAR_BEDTIME_MODE:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 3
    return-object p0
.end method

.method public final onDeviceConfigChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$WearBedtimeModeData;

    .line 3
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {v0, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$WearBedtimeModeData;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mHandler:Landroid/os/Handler;

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;->mSettingsObserver:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$1;

    .line 9
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 12
    return-void
.end method

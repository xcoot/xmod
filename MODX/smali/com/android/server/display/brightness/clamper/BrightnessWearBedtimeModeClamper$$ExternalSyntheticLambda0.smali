.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;

.field public final synthetic f$1:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$WearBedtimeModeData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$WearBedtimeModeData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;

    .line 6
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$WearBedtimeModeData;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$WearBedtimeModeData;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    check-cast p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 10
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 12
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    .line 14
    iput p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mBrightnessCap:F

    .line 16
    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 18
    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 21
    return-void
.end method

.class public final Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;
.implements Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;
.implements Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$WearBedtimeModeData;


# instance fields
.field public final mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mPowerThrottlingDataId:Ljava/lang/String;

.field public final mThermalThrottlingDataId:Ljava/lang/String;

.field public final mUniqueDisplayId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mUniqueDisplayId:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mThermalThrottlingDataId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 11
    .line 12
    return-void
.end method

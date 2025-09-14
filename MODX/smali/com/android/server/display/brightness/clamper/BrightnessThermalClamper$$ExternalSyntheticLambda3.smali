.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;

    .line 3
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 5
    iget-object v0, v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 7
    const-string/jumbo v1, "display_manager"

    .line 10
    const-string/jumbo v2, "brightness_throttling_data"

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-interface {v0, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda0;

    .line 20
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataSetMapper:Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda1;

    .line 22
    invoke-static {v0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataOverride:Ljava/util/Map;

    .line 28
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->recalculateActiveData$1()V

    .line 31
    return-void
.end method

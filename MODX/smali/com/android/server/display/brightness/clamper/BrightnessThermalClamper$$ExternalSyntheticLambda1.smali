.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;

.field public final synthetic f$1:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;

    .line 5
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;)V

    .line 13
    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->recalculateActiveData$1()V

    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;

    .line 19
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;)V

    .line 24
    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 26
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 28
    const-string/jumbo v1, "display_manager"

    .line 31
    const-string/jumbo v2, "brightness_throttling_data"

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-interface {p0, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda0;

    .line 41
    iget-object v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataSetMapper:Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda1;

    .line 43
    invoke-static {p0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    .line 46
    move-result-object p0

    .line 47
    iput-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataOverride:Ljava/util/Map;

    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->recalculateActiveData$1()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalData;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 27
    .line 28
    const-string/jumbo v1, "display_manager"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "brightness_throttling_data"

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-interface {p0, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mDataSetMapper:Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    invoke-static {p0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iput-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThermalThrottlingDataOverride:Ljava/util/Map;

    .line 48
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

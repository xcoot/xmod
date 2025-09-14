.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;

.field public final synthetic f$1:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;

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
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->recalculateActiveData()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$PowerData;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 27
    .line 28
    const-string/jumbo v1, "power_throttling_data"

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const-string/jumbo v3, "display_manager"

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, v3, v1, v2}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mDataPointMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mDataSetMapper:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda2;

    .line 42
    .line 43
    invoke-static {p0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iput-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingDataOverride:Ljava/util/Map;

    .line 48
    .line 49
    iget-object p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    .line 50
    .line 51
    if-nez p0, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda4;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mInjector:Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$Injector;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v2, Lcom/android/server/display/brightness/clamper/PmicMonitor;

    .line 65
    .line 66
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMillis:I

    .line 67
    .line 68
    invoke-direct {v2, v1, p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda4;I)V

    .line 69
    .line 70
    .line 71
    iput-object v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->start()V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

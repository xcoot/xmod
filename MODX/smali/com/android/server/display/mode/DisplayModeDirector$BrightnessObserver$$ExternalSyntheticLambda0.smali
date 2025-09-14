.class public final synthetic Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 8
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 10
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 12
    const-string/jumbo v0, "peak_refresh_rate_ambient_thresholds"

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 26
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 28
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 30
    const-string/jumbo v0, "peak_refresh_rate_brightness_thresholds"

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 44
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 46
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 48
    const-string/jumbo v0, "fixed_refresh_rate_high_ambient_brightness_thresholds"

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 62
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 64
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 66
    const-string/jumbo v0, "peak_refresh_rate_ambient_thresholds"

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 80
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 82
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 84
    const-string/jumbo v0, "peak_refresh_rate_brightness_thresholds"

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 98
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 100
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 102
    const-string/jumbo v0, "fixed_refresh_rate_high_ambient_brightness_thresholds"

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 116
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 118
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 120
    const-string/jumbo v0, "fixed_refresh_rate_high_display_brightness_thresholds"

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 126
    move-result-object p0

    .line 127
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 134
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 136
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 138
    const-string/jumbo v0, "peak_refresh_rate_brightness_thresholds"

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 144
    move-result-object p0

    .line 145
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

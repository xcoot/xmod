.class public final synthetic Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/DisplayDeviceConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayDeviceConfig;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayDeviceConfig;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 44
    .line 45
    return-object p0

    .line 46
    nop

    .line 47
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

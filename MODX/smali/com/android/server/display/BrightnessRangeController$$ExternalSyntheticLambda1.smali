.class public final synthetic Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/BrightnessRangeController;

.field public final synthetic f$1:Lcom/android/server/display/HighBrightnessModeMetadata;

.field public final synthetic f$2:Lcom/android/server/display/DisplayDeviceInfo;

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:Lcom/android/server/display/DisplayDeviceConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/BrightnessRangeController;

    .line 6
    iput-object p2, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 8
    iput-object p3, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/display/DisplayDeviceInfo;

    .line 10
    iput-object p4, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;->f$3:Landroid/os/IBinder;

    .line 12
    iput-object p5, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/display/DisplayDeviceConfig;

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/BrightnessRangeController;

    .line 3
    iget-object v1, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 5
    iget-object v2, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/display/DisplayDeviceInfo;

    .line 7
    iget-object v6, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;->f$3:Landroid/os/IBinder;

    .line 9
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/display/DisplayDeviceConfig;

    .line 11
    iget-object v3, v0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 13
    iput-object v1, v3, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 15
    iget v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 17
    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 19
    iget-object v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 24
    move-result-object v8

    .line 25
    new-instance v9, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;

    .line 27
    invoke-direct {v9, p0}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    .line 30
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    .line 33
    return-void
.end method

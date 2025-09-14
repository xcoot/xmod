.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 6
    return-void
.end method


# virtual methods
.method public final getHdrBrightnessFromSdr(FF)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(F)F

    .line 8
    move-result p0

    .line 9
    return p0
.end method

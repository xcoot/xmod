.class public final synthetic Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
.implements Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getHdrBrightnessFromSdr(FF)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/display/DisplayDeviceConfig;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(F)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public onChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessModifier;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->stop()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessClamper;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->stop()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessClamper;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->onDeviceConfigChanged()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessModifier;

    .line 25
    .line 26
    const/high16 p0, -0x40800000    # -1.0f

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->setAmbientLux(F)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

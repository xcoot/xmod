.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessClamper;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->onDisplayChanged(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 17
    .line 18
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessModifier;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->dump(Ljava/io/PrintWriter;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 25
    .line 26
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessClamper;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->dump(Ljava/io/PrintWriter;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

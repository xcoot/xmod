.class public final synthetic Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    .line 10
    sget v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->$r8$clinit:I

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const-string v0, "HBMController#onHdrInfoChanged"

    .line 17
    const-wide/32 v1, 0x20000

    .line 20
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 25
    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    .line 27
    iput-boolean p0, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 29
    iget p0, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 31
    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    .line 33
    iget v4, v0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 35
    invoke-virtual {v0, v4, p0, v3}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(IFF)V

    .line 38
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 41
    return-void

    .line 42
    :pswitch_0
    check-cast p0, Lcom/android/server/display/HighBrightnessModeController;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

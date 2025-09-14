.class public final synthetic Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    .line 6
    iput p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$3:I

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    .line 3
    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget v2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$2:I

    .line 7
    iget p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;->f$3:I

    .line 9
    iget-object v3, v0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;

    .line 11
    if-lez v1, :cond_0

    .line 13
    mul-int/2addr v2, p0

    .line 14
    int-to-float p0, v2

    .line 15
    iget v0, v0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    .line 17
    cmpl-float p0, p0, v0

    .line 19
    if-ltz p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    iget-object v0, v3, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 26
    iput-boolean p0, v0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    .line 28
    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 30
    iget v2, v0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    .line 32
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/display/brightness/clamper/HdrClamper;->recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V

    .line 35
    return-void
.end method

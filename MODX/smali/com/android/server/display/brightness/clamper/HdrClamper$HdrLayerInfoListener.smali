.class public final Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;

.field public mHdrMinPixels:F


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    .line 4
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 7
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    .line 9
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;

    .line 11
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHandler:Landroid/os/Handler;

    .line 13
    return-void
.end method


# virtual methods
.method public final onHdrInfoChanged(Landroid/os/IBinder;IIIIF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance p5, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {p5, p0, p2, p3, p4}, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;III)V

    .line 8
    invoke-virtual {p1, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

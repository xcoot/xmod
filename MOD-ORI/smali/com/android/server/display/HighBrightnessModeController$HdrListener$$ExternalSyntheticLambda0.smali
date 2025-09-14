.class public final synthetic Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/HighBrightnessModeController$HdrListener;IIIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$4:F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;->f$4:F

    .line 10
    .line 11
    sget v4, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v4, "HBMController#onHdrInfoChanged"

    .line 17
    .line 18
    const-wide/32 v5, 0x20000

    .line 19
    .line 20
    .line 21
    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v4, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    if-lez v1, :cond_0

    .line 28
    .line 29
    mul-int/2addr v2, v3

    .line 30
    int-to-float v1, v2

    .line 31
    iget v2, v4, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 32
    .line 33
    iget v3, v4, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 34
    .line 35
    mul-int/2addr v2, v3

    .line 36
    int-to-float v2, v2

    .line 37
    iget v3, v4, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    .line 38
    .line 39
    mul-float/2addr v2, v3

    .line 40
    cmpl-float v1, v1, v2

    .line 41
    .line 42
    if-ltz v1, :cond_0

    .line 43
    .line 44
    move v1, v7

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 47
    :goto_0
    iput-boolean v1, v4, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 48
    .line 49
    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object v1, v4, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move p0, v2

    .line 59
    :goto_1
    cmpg-float v1, p0, v2

    .line 60
    .line 61
    if-gez v1, :cond_2

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v3, "Ignoring invalid desired HDR/SDR Ratio: "

    .line 66
    .line 67
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string v1, "HighBrightnessModeController"

    .line 78
    .line 79
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move v2, p0

    .line 84
    :goto_2
    iget-object p0, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 85
    .line 86
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    .line 87
    .line 88
    invoke-static {p0, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-nez p0, :cond_3

    .line 93
    .line 94
    iget-object p0, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 95
    .line 96
    iput-boolean v7, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    .line 97
    .line 98
    iput v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    .line 99
    .line 100
    :cond_3
    iget-object p0, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    .line 101
    .line 102
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 103
    .line 104
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    .line 105
    .line 106
    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 107
    .line 108
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(IFF)V

    .line 109
    .line 110
    .line 111
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

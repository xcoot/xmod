.class public final synthetic Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/BrightnessTracker;

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/BrightnessTracker;

    .line 6
    iput-object p2, p0, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;->f$1:Ljava/io/PrintWriter;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/BrightnessTracker;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$$ExternalSyntheticLambda0;->f$1:Ljava/io/PrintWriter;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "  mSensorRegistered="

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-boolean v2, v0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 14
    const-string v3, "  mColorSamplingEnabled="

    .line 16
    invoke-static {v1, v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v1

    .line 20
    iget-boolean v2, v0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 22
    const-string v3, "  mNoFramesToSample="

    .line 24
    invoke-static {v1, v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v1

    .line 28
    iget v2, v0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    .line 30
    const-string v3, "  mFrameRate="

    .line 32
    invoke-static {v1, v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v1

    .line 36
    iget v0, v0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    .line 38
    invoke-static {v1, v0, p0}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 41
    return-void
.end method

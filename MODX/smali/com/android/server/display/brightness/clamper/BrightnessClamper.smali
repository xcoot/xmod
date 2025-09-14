.class public abstract Lcom/android/server/display/brightness/clamper/BrightnessClamper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBrightnessCap:F

.field public final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mHandler:Landroid/os/Handler;

.field public mIsActive:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mBrightnessCap:F

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mIsActive:Z

    .line 11
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mHandler:Landroid/os/Handler;

    .line 13
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 15
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "BrightnessClamper:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->getType()Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    const-string v1, " mBrightnessCap: "

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mBrightnessCap:F

    .line 31
    const-string v2, " mIsActive: "

    .line 33
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v0

    .line 37
    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mIsActive:Z

    .line 39
    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 42
    return-void
.end method

.method public abstract getType()Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;
.end method

.method public abstract onDeviceConfigChanged()V
.end method

.method public abstract onDisplayChanged(Ljava/lang/Object;)V
.end method

.method public abstract stop()V
.end method

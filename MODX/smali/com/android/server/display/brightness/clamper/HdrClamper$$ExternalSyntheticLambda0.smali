.class public final synthetic Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/HdrClamper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/HdrClamper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/HdrClamper;

    .line 3
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    .line 5
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    .line 7
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    .line 9
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    .line 14
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 16
    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 19
    return-void
.end method

.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClampers:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v3}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda12;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/server/display/brightness/clamper/BrightnessClamper;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    iget v0, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mBrightnessCap:F

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->getType()Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :cond_0
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mBrightnessCap:F

    .line 49
    .line 50
    cmpl-float v1, v1, v0

    .line 51
    .line 52
    const/high16 v3, -0x40800000    # -1.0f

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperType:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 57
    .line 58
    if-ne v1, v2, :cond_1

    .line 59
    .line 60
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mCustomAnimationRate:F

    .line 61
    .line 62
    cmpl-float v1, v1, v3

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    :cond_1
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mBrightnessCap:F

    .line 67
    .line 68
    iput-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperType:Lcom/android/server/display/brightness/clamper/BrightnessClamper$Type;

    .line 69
    .line 70
    iput v3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mCustomAnimationRate:F

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 73
    .line 74
    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

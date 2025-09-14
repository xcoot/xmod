.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;->f$0:F

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1$$ExternalSyntheticLambda0;->f$0:F

    .line 3
    check-cast p1, Lcom/android/server/display/brightness/clamper/BrightnessModifier;

    .line 5
    invoke-virtual {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->setAmbientLux(F)V

    .line 8
    return-void
.end method

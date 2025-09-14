.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper$ThermalStatusObserver;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;

    .line 6
    .line 7
    iget v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThrottlingStatus:I

    .line 8
    .line 9
    if-eq v1, p0, :cond_0

    .line 10
    .line 11
    iput p0, v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->mThrottlingStatus:I

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalClamper;->recalculateBrightnessCap$1()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

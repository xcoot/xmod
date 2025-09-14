.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 6
    iput p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;->f$1:I

    .line 8
    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;->f$2:I

    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 3
    iget v1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;->f$1:I

    .line 5
    iget p0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;->f$2:I

    .line 7
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    .line 9
    if-eqz v2, :cond_1

    .line 11
    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->isSupportedOffloadState(I)Z

    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 17
    if-eqz v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    .line 22
    iput v1, v2, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    .line 24
    iput p0, v2, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    .line 26
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 29
    :cond_1
    :goto_0
    return-void
.end method

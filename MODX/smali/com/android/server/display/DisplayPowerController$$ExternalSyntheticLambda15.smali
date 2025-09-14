.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 6
    iput p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda15;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 3
    iget p0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda15;->f$1:I

    .line 5
    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 7
    if-eq p0, v1, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v2, "setActualDisplayState: "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 19
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, " -> "

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {p0}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    .line 44
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput p0, v0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 49
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 52
    :cond_0
    return-void
.end method

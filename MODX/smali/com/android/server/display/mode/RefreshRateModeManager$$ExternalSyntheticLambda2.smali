.class public final synthetic Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/mode/RefreshRateModeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mBrightness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    .line 26
    move-result v0

    .line 27
    invoke-static {p1}, Lcom/android/server/display/mode/RefreshRateController;->getBrightnessZone(I)I

    .line 30
    move-result p1

    .line 31
    if-ne v0, p1, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p1, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda0;

    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-direct {p1, p0, v0}, Lcom/android/server/display/mode/RefreshRateModeManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager;I)V

    .line 40
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mHandler:Landroid/os/Handler;

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    :goto_0
    return-void
.end method

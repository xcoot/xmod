.class public final Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    return-void
.end method


# virtual methods
.method public final applyEvenDimmerColorChanges(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 3
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {v0, p2}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 12
    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 14
    invoke-virtual {p2, p1}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->setMatrix(I)V

    .line 17
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 19
    const/4 p1, 0x6

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    return-void
.end method

.method public final onOpticalUdfpsStarted()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 3
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Lcom/android/server/display/color/TintController;->mIsActivationLocked:Z

    .line 8
    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 16
    new-instance v3, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v3, p0, v4}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;I)V

    .line 22
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    :cond_0
    iget-object p0, v0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 27
    iput-boolean v2, p0, Lcom/android/server/display/color/TintController;->mIsActivationLocked:Z

    .line 29
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 35
    iget-object p0, v0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 41
    :cond_1
    iget-object p0, v0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 43
    iput-boolean v2, p0, Lcom/android/server/display/color/TintController;->mIsActivationLocked:Z

    .line 45
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_2

    .line 51
    iget-object p0, v0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x6

    .line 54
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    :cond_2
    return-void
.end method

.method public final onOpticalUdfpsStopped()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 3
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    .line 5
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Lcom/android/server/display/color/TintController;->mIsActivationLocked:Z

    .line 8
    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 16
    new-instance v3, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;

    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v3, p0, v4}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;I)V

    .line 22
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    :cond_0
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 27
    iput-boolean v2, v1, Lcom/android/server/display/color/TintController;->mIsActivationLocked:Z

    .line 29
    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 35
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 41
    :cond_1
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    .line 43
    iput-boolean v2, v1, Lcom/android/server/display/color/TintController;->mIsActivationLocked:Z

    .line 45
    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 51
    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;

    .line 55
    const/4 v2, 0x2

    .line 56
    invoke-direct {v1, p0, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;I)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    :cond_2
    return-void
.end method

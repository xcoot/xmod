.class public final Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 3
    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 7
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 9
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 14
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 16
    if-eq v1, p1, :cond_0

    .line 18
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

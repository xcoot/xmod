.class public final Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeAllowedModesLocked()V

    .line 11
    .line 12
    .line 13
    monitor-exit p1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeAllowedModesLocked()V

    .line 11
    .line 12
    .line 13
    monitor-exit p1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final onDisplayRemoved(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 6
    .line 7
    const/16 v0, 0x13

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

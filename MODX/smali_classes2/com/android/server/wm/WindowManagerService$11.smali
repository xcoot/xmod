.class public final Lcom/android/server/wm/WindowManagerService$11;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onAnimationCancelled()V
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "mShellRemoteAnimRunner#onAnimationCancelled, caller="

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    const-string v1, "WindowManager"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo p1, "mShellRemoteAnimRunner#onAnimationStart, caller="

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    const-string p2, "WindowManager"

    .line 11
    .line 12
    invoke-static {p1, p0, p2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

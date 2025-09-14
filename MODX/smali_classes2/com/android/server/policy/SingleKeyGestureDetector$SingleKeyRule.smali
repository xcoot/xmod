.class public abstract Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public extensionMultiPressTimeout:J

.field public mIsKeyLongPressed:Z

.field public final mKeyCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->extensionMultiPressTimeout:J

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 13
    .line 14
    iget p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 15
    .line 16
    if-ne p0, p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v2

    .line 20
    :goto_0
    return v0

    .line 21
    :cond_2
    return v2
.end method

.method public getLongPressTimeoutMs()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxMultiPressCount()I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x5

    .line 14
    return p0

    .line 15
    :cond_0
    sget-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 16
    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x4

    .line 26
    return p0

    .line 27
    :cond_1
    sget-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 28
    .line 29
    const/16 v1, 0x10

    .line 30
    .line 31
    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const/4 p0, 0x3

    .line 38
    return p0

    .line 39
    :cond_2
    sget-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/KeyCustomizationManager;->hasLastInfo(II)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    const/4 p0, 0x2

    .line 50
    return p0

    .line 51
    :cond_3
    const/4 p0, 0x1

    .line 52
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 2
    .line 3
    return p0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->sendBroadcastIfNeeded(Landroid/view/KeyEvent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onKeyUp(IIJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->sendBroadcastIfNeeded(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public onLongPress(JLandroid/view/KeyEvent;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 3
    .line 4
    sget-object p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 5
    .line 6
    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(Landroid/view/KeyEvent;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onMultiPress(JIILandroid/view/KeyEvent;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 2
    .line 3
    invoke-virtual {p0, p5, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchMultiPressAction(Landroid/view/KeyEvent;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract onPress(JLandroid/view/KeyEvent;I)V
.end method

.method public onReset()V
    .locals 0

    .line 1
    return-void
.end method

.method public onVeryLongPress()V
    .locals 0

    .line 1
    return-void
.end method

.method public final sendBroadcastIfNeeded(Landroid/view/KeyEvent;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->KEYCODE_KEY_DISPATCHING_ALLOWLIST:Ljava/util/Set;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v0, Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/high16 v2, 0x10000000

    .line 22
    .line 23
    and-int/2addr v0, v2

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    sget-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x2

    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    sget-object v0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 38
    .line 39
    iget-boolean p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 40
    .line 41
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressSendBroadcast(Landroid/view/KeyEvent;IZ)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public supportLongPress()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$BackKeyRule;

    .line 2
    .line 3
    return p0
.end method

.method public supportVeryLongPress()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "KeyCode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    .line 9
    .line 10
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", LongPress="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", VeryLongPress="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", MaxMultiPressCount="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

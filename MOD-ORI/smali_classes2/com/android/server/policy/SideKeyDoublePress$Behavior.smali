.class public abstract Lcom/android/server/policy/SideKeyDoublePress$Behavior;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAction:I

.field public mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final mTargetAppName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAction:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public doublePressLaunchPolicy(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 2
    .line 3
    const/16 p1, 0x1a

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->doublePressLaunchPolicy(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getAction()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAction:I

    .line 2
    .line 3
    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.category.LAUNCHER"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/high16 v1, 0x10200000

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public preCondition(Landroid/content/Intent;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->doublePressLaunchPolicy(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return p2

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return p2
.end method

.method public setAction(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAction:I

    .line 2
    .line 3
    return-void
.end method

.method public showCoverToast(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    sget-boolean p0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    xor-int/2addr v0, v1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 16
    .line 17
    packed-switch p0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_0
    const-string/jumbo p0, "showCoverToast"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string p0, "SideKeyDoublePress"

    .line 28
    .line 29
    const-string/jumbo p1, "neededShowCoverToast for cover"

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract startTargetApp(ZLandroid/content/Intent;Landroid/content/Intent;)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    const-string v1, "Behavior="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " keyCode=26 appName="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public updateTargetComponent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method

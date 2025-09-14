.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "any_screen_enabled"

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, -0x2

    .line 24
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    move v1, v0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    .line 43
    .line 44
    iget-boolean p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mBootCompleted:Z

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p1, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string/jumbo v0, "stopService(), caller="

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x3

    .line 74
    const-string v1, "OneHandOpPolicy"

    .line 75
    .line 76
    invoke-static {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mReasonToStart:I

    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    .line 83
    .line 84
    new-instance v0, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    const/4 v1, 0x2

    .line 87
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/OneHandOpPolicy;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_0
    return-void

    .line 94
    :pswitch_0
    check-cast p0, Ljava/util/Set;

    .line 95
    .line 96
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 97
    .line 98
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 99
    .line 100
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 101
    .line 102
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

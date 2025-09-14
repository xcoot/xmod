.class public final synthetic Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/OneHandOpPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/OneHandOpPolicy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/OneHandOpPolicy;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/OneHandOpPolicy;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/content/ComponentName;

    .line 19
    .line 20
    const-string v2, "com.sec.android.easyonehand"

    .line 21
    .line 22
    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    .line 23
    .line 24
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string v1, "ForceHide"

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :pswitch_0
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const/4 v0, 0x3

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_1
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

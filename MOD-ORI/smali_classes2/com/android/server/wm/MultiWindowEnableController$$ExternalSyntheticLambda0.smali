.class public final synthetic Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowEnableController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowEnableController;Ljava/lang/String;ZIZI)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowEnableController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$2:Z

    .line 8
    .line 9
    iput p4, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$3:I

    .line 10
    .line 11
    iput-boolean p5, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$4:Z

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowEnableController;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$2:Z

    .line 11
    .line 12
    iget v3, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$3:I

    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$4:Z

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v4, Landroid/content/Intent;

    .line 20
    .line 21
    const-string v5, "com.samsung.android.action.MULTI_WINDOW_ENABLE_CHANGED"

    .line 22
    .line 23
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/high16 v5, 0x40000000    # 2.0f

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const-string v5, "com.samsung.android.extra.MULTI_WINDOW_ENABLE_REQUESTER"

    .line 32
    .line 33
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-string v1, "com.samsung.android.extra.MULTI_WINDOW_ENABLED"

    .line 37
    .line 38
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string v1, "com.samsung.android.extra.MULTI_WINDOW_ENABLED_USER_ID"

    .line 42
    .line 43
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const-string v1, "com.samsung.android.extra.IN_MULTI_WINDOW_MODE"

    .line 47
    .line 48
    invoke-virtual {v4, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object p0, v0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 56
    .line 57
    const-string v1, "com.samsung.android.permission.MULTI_WINDOW_MONITOR"

    .line 58
    .line 59
    const/4 v2, -0x1

    .line 60
    invoke-virtual {p0, v4, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_0
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowEnableController;

    .line 65
    .line 66
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 67
    .line 68
    iget-boolean v8, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$2:Z

    .line 69
    .line 70
    iget v9, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$3:I

    .line 71
    .line 72
    iget-boolean v10, p0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;->f$4:Z

    .line 73
    .line 74
    iget-object p0, v6, Lcom/android/server/wm/MultiWindowEnableController;->mH:Landroid/os/Handler;

    .line 75
    .line 76
    new-instance v0, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/4 v11, 0x1

    .line 79
    move-object v5, v0

    .line 80
    invoke-direct/range {v5 .. v11}, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiWindowEnableController;Ljava/lang/String;ZIZI)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

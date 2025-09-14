.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$2;Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/policy/PhoneWindowManagerExt$2;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/content/ComponentName;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v2, Landroid/content/Intent;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/16 v2, 0x100

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 35
    .line 36
    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 37
    .line 38
    .line 39
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v1, "PhoneWindowManagerExt"

    .line 49
    .line 50
    const-string v2, "bind KeyguardService due to updating SystemUI pkg"

    .line 51
    .line 52
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v1, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    .line 75
    .line 76
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda11;->f$2:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p0, Ljava/lang/String;

    .line 86
    .line 87
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;

    .line 88
    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 92
    .line 93
    .line 94
    :cond_2
    const/4 v2, 0x0

    .line 95
    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    iput-object p0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mToast:Landroid/widget/Toast;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

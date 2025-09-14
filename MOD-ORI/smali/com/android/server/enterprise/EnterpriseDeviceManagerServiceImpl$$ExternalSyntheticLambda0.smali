.class public final synthetic Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mKeyCodeMediator:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->getAllRestrictedKeyCodes()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_0
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->createDeferredServices()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    new-instance v1, Landroid/content/Intent;

    .line 49
    .line 50
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    new-instance v0, Landroid/content/Intent;

    .line 62
    .line 63
    const-string/jumbo v1, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    .line 71
    .line 72
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_1
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-direct {v0, v1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    const-string/jumbo v1, "knox_adapter_service"

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseService;->invokeSystemReadyIfNeeded(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-direct {v0, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    const-string v1, "DualDARPolicy"

    .line 122
    .line 123
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;->addSystemService(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mInjector:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Injector;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseService;->invokeSystemReadyIfNeeded(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sget-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

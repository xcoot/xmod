.class public final Lcom/android/server/SystemServer$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IServiceCreator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/SystemServer$4;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/SystemServer$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/android/server/knox/dar/DarManagerService;

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/knox/dar/DarManagerService$Injector;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/DarManagerService$Injector;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/android/server/knox/dar/DarManagerService;-><init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    new-instance p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_1
    new-instance p0, Lcom/android/server/emailksproxy/EmailKeystoreService;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/knox/util/ISemKeyStoreService$Stub;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_2
    new-instance p0, Lcom/android/server/IcccManagerService;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/android/server/IcccManagerService$1;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/android/server/IcccManagerService$1;-><init>(Lcom/android/server/IcccManagerService;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "IcccManagerService"

    .line 42
    .line 43
    const-string v2, "Start IcccManagerService"

    .line 44
    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    sput-object p1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const-string/jumbo p1, "com.samsung.intent.action.BCS_REQUEST"

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget-object v1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

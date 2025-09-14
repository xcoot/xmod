.class public final Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 6
    const-string v1, "SecurityPolicy"

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_0

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v0, "unknown msg type "

    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget p1, p1, Landroid/os/Message;->what:I

    .line 21
    invoke-static {p0, p1, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p1

    .line 33
    if-ne p1, v2, :cond_2

    .line 35
    sget-object p1, Lcom/android/server/enterprise/security/SecurityPolicy;->mBannerMap:Ljava/util/Map;

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 39
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 41
    if-nez p1, :cond_1

    .line 43
    new-instance p1, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 45
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    .line 48
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->factoryReceiver:Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    .line 54
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    const-string/jumbo p0, "successful unregister of Broadcast Receiver "

    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string/jumbo p0, "message not send from Broadcast Receiver "

    .line 69
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void
.end method

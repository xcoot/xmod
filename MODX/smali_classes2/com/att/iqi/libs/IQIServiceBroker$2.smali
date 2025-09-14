.class Lcom/att/iqi/libs/IQIServiceBroker$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string p1, "com.att.iqi.extra.IQI_STATE"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const-string/jumbo p2, "service_state"

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 15
    .line 16
    iget v3, v2, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    iput v1, v2, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 21
    .line 22
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 27
    .line 28
    iget v0, v0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Lcom/att/iqi/libs/PreferenceStore;->setInteger(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 39
    .line 40
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mregisterReceivers(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    if-nez p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 47
    .line 48
    iget v2, p1, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 49
    .line 50
    if-ne v2, v1, :cond_1

    .line 51
    .line 52
    iput v0, p1, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 53
    .line 54
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 59
    .line 60
    iget v0, v0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 61
    .line 62
    invoke-virtual {p1, p2, v0}, Lcom/att/iqi/libs/PreferenceStore;->setInteger(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->tryDisconnecting()V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 71
    .line 72
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$munregisterReceivers(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-void
.end method

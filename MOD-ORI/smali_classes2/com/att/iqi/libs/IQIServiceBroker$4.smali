.class Lcom/att/iqi/libs/IQIServiceBroker$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$4;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

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
    .locals 0

    .line 1
    const-string p0, "com.att.iqi.extra.IQI_DEBUG"

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eq p0, p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "log_enabled"

    .line 19
    .line 20
    invoke-virtual {p1, p2, p0}, Lcom/att/iqi/libs/PreferenceStore;->setBoolean(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->enableLogging(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

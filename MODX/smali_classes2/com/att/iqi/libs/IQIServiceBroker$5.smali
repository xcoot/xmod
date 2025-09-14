.class Lcom/att/iqi/libs/IQIServiceBroker$5;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Message received by dispatcher: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v0, p1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq v0, v1, :cond_4

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    if-eq v0, p1, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    if-eq v0, p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x4

    .line 32
    if-eq v0, p1, :cond_0

    .line 33
    .line 34
    const-string p0, "Unknown message"

    .line 35
    .line 36
    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string p1, "Timed out waiting for packages to be uploaded"

    .line 41
    .line 42
    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 46
    .line 47
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mdisablePackage(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->tryDisconnecting()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->checkPkgValidity()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mappEnabled(Lcom/att/iqi/libs/IQIServiceBroker;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 80
    .line 81
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const-string p0, "Bad or disabled package"

    .line 94
    .line 95
    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->shouldConnect()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    .line 109
    instance-of v0, v0, Landroid/os/Bundle;

    .line 110
    .line 111
    if-nez v0, :cond_5

    .line 112
    .line 113
    new-instance v0, Landroid/os/Bundle;

    .line 114
    .line 115
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    .line 120
    const-string v0, "Trying to connect with empty bundle"

    .line 121
    .line 122
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_5
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 126
    .line 127
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p1, Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-static {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mtryConnecting(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Bundle;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_0
    return-void
.end method

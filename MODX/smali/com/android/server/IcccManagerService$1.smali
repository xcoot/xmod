.class public final Lcom/android/server/IcccManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/IcccManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/IcccManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string/jumbo p1, "command"

    .line 4
    const-string/jumbo v0, "iccc_response - "

    .line 7
    const-string/jumbo v1, "command: "

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v4, "receive intent action is "

    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    const-string v4, "IcccManagerService"

    .line 33
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string/jumbo v3, "com.samsung.intent.action.BCS_REQUEST"

    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 48
    move-result-object v2

    .line 49
    if-nez v2, :cond_0

    .line 51
    :try_start_0
    const-string/jumbo p0, "data is null "

    .line 54
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string p2, "AT+ICCCINFO=1,0,0"

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_1

    .line 93
    new-instance p1, Landroid/content/Intent;

    .line 95
    const-string/jumbo p2, "com.samsung.intent.action.BCS_RESPONSE"

    .line 98
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    .line 103
    invoke-static {p0}, Lcom/android/server/IcccManagerService;->-$$Nest$mget_iccc_response_data(Lcom/android/server/IcccManagerService;)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p2

    .line 119
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string/jumbo p2, "response"

    .line 125
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    sget-object p0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 130
    const-string/jumbo p2, "com.sec.android.phone.permission.AT_COMMAND"

    .line 133
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_1

    .line 137
    :goto_0
    sget-object p1, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 139
    const-string/jumbo p1, "onReceive:ACTION_BCS_REQUEST-exception"

    .line 142
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 148
    :cond_1
    :goto_1
    return-void
.end method

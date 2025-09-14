.class public final Lcom/android/server/HermesService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/HermesService;


# direct methods
.method public constructor <init>(Lcom/android/server/HermesService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v0, "HERMES#Service"

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-string/jumbo p2, "keyguard"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/app/KeyguardManager;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const-string/jumbo p1, "security.securenvm.available"

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string/jumbo p2, "true"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->SecnvmPowerOn()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const-string/jumbo p1, "notify key guard showing to hermesd ret : "

    .line 59
    .line 60
    .line 61
    invoke-static {p0, p1, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    const-string p1, "android.intent.action.DATE_CHANGED"

    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    const-string p1, "ACTION_DATE_CHANGED intent called"

    .line 78
    .line 79
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    .line 83
    .line 84
    sget p2, Lcom/android/server/HermesService;->$r8$clinit:I

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/server/HermesService;->TransmitCollectedDataToServer()V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const-string p1, "CollectSkeymasterDumpThread"

    .line 95
    .line 96
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :try_start_0
    new-instance p1, Lcom/android/server/HermesService$1;

    .line 100
    .line 101
    const/4 p2, 0x0

    .line 102
    invoke-direct {p1, p0, p2}, Lcom/android/server/HermesService$1;-><init>(Lcom/android/server/HermesService;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception p0

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string p2, "Error occurs on CollectSkeymasterDumpThread. Err = "

    .line 113
    .line 114
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :goto_0
    const-string p0, "CollectSkeymasterDumpThread done"

    .line 132
    .line 133
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_1
    :goto_1
    return-void
.end method

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

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    const-string v0, "HERMES#Service"

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    .line 17
    iget-object p1, p1, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    .line 19
    const-string/jumbo p2, "keyguard"

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/app/KeyguardManager;

    .line 28
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 34
    const-string/jumbo p1, "security.securenvm.available"

    .line 37
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    const-string/jumbo p2, "true"

    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 50
    iget-object p0, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    .line 52
    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    .line 54
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->SecnvmPowerOn()I

    .line 57
    move-result p0

    .line 58
    const-string/jumbo p1, "notify key guard showing to hermesd ret : "

    .line 61
    invoke-static {p0, p1, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    const-string p1, "android.intent.action.DATE_CHANGED"

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_1

    .line 77
    const-string p1, "ACTION_DATE_CHANGED intent called"

    .line 79
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p1, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    .line 84
    sget p2, Lcom/android/server/HermesService;->$r8$clinit:I

    .line 86
    invoke-virtual {p1}, Lcom/android/server/HermesService;->TransmitCollectedDataToServer()V

    .line 89
    iget-object p0, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    const-string p1, "CollectSkeymasterDumpThread"

    .line 96
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :try_start_0
    new-instance p1, Lcom/android/server/HermesService$1;

    .line 101
    const/4 p2, 0x0

    .line 102
    invoke-direct {p1, p0, p2}, Lcom/android/server/HermesService$1;-><init>(Lcom/android/server/HermesService;I)V

    .line 105
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception p0

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    .line 112
    const-string p2, "Error occurs on CollectSkeymasterDumpThread. Err = "

    .line 114
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    const-string p0, "CollectSkeymasterDumpThread done"

    .line 133
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    :goto_1
    return-void
.end method

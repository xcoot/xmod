.class public final Lcom/android/server/PACMService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method public constructor <init>(Lcom/android/server/PACMService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

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
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "Broadcast received:"

    .line 8
    .line 9
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v0, "PACMService"

    .line 20
    .line 21
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string/jumbo p2, "com.samsung.android.aircommandmanager.START_LOCAL_SOCKET"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    const-string p1, "GalaxyDiag app start"

    .line 34
    .line 35
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/PACMService;->mDevice:Lcom/samsung/android/service/ProtectedATCommand/Device;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->isCsToolInstalled()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/PACMService;->mDevice:Lcom/samsung/android/service/ProtectedATCommand/Device;

    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->setCSTool(Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string/jumbo p2, "com.samsung.android.aircommandmanager.STOP_LOCAL_SOCKET"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    const-string p1, "GalaxyDiag app end"

    .line 67
    .line 68
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/PACMService;->mDevice:Lcom/samsung/android/service/ProtectedATCommand/Device;

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/ProtectedATCommand/Device;->setCSTool(Z)V

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return-void
.end method

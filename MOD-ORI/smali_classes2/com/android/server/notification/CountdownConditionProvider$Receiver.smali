.class public final Lcom/android/server/notification/CountdownConditionProvider$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/CountdownConditionProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/CountdownConditionProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;->this$0:Lcom/android/server/notification/CountdownConditionProvider;

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
    .locals 10

    .line 1
    sget-object p1, Lcom/android/server/notification/CountdownConditionProvider;->ACTION:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const-string p1, "condition_id"

    .line 14
    .line 15
    const-class v0, Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/net/Uri;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    sget-boolean v2, Lcom/android/server/notification/CountdownConditionProvider;->DEBUG:Z

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Countdown condition fired: "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v2, "ConditionProviders.CCP"

    .line 50
    .line 51
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    const-wide/16 v2, 0x0

    .line 55
    .line 56
    cmp-long p1, v0, v2

    .line 57
    .line 58
    if-lez p1, :cond_1

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;->this$0:Lcom/android/server/notification/CountdownConditionProvider;

    .line 61
    .line 62
    new-instance p1, Landroid/service/notification/Condition;

    .line 63
    .line 64
    invoke-static {v0, v1, p2}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v9, 0x1

    .line 70
    const-string v4, ""

    .line 71
    .line 72
    const-string v5, ""

    .line 73
    .line 74
    const-string v6, ""

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    move-object v2, p1

    .line 78
    invoke-direct/range {v2 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/service/notification/ConditionProviderService;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
.end method

.class public final synthetic Lcom/android/server/sepunion/SmartMeetingObserverService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/SmartMeetingObserverService$2;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/SmartMeetingObserverService$2;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SmartMeetingObserverService$2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$2$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SmartMeetingObserverService$2;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$2$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    sget v1, Lcom/android/server/sepunion/SmartMeetingObserverService$2;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v2, "onReceive: "

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "SmartMeetingObserverService"

    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 39
    .line 40
    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    iget-object p0, v0, Lcom/android/server/sepunion/SmartMeetingObserverService$2;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const-string/jumbo v1, "user"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Landroid/os/UserManager;

    .line 58
    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    iget-object p0, v0, Lcom/android/server/sepunion/SmartMeetingObserverService$2;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 68
    .line 69
    invoke-static {p0}, Lcom/android/server/sepunion/SmartMeetingObserverService;->-$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/SmartMeetingObserverService;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const-string/jumbo p0, "registerUsageStatsWatcher: failed"

    .line 74
    .line 75
    .line 76
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_0
    return-void
.end method

.class public final Lcom/android/server/sepunion/SmartMeetingObserverService$1;
.super Landroid/app/IForegroundServiceObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartMeetingObserverService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$1;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IForegroundServiceObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    new-instance v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string/jumbo p1, "null"

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    const-string v2, "component_name"

    .line 25
    .line 26
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo p1, "pkg_name"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo p1, "user_id"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    const-string p1, "is_foreground"

    .line 42
    .line 43
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService$1;->this$0:Lcom/android/server/sepunion/SmartMeetingObserverService;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/sepunion/SmartMeetingObserverService;->mHandler:Lcom/android/server/sepunion/SmartMeetingObserverService$MyHandler;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

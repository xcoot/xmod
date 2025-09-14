.class public final Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/SamsungAlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/SamsungAlarmManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;->this$0:Lcom/android/server/alarm/SamsungAlarmManagerService;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;->this$0:Lcom/android/server/alarm/SamsungAlarmManagerService;

    .line 9
    iget-object p0, p0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mContext:Landroid/content/Context;

    .line 11
    sget-object p1, Lcom/android/server/alarm/SamsungAlarmManagerService;->ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 13
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 18
    :goto_0
    return-void
.end method

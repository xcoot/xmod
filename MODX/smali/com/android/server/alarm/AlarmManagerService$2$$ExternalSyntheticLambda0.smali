.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService$2;

.field public final synthetic f$1:Landroid/app/IAlarmCompleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService$2;Landroid/app/IAlarmCompleteListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/AlarmManagerService$2;

    .line 6
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;->f$1:Landroid/app/IAlarmCompleteListener;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/AlarmManagerService$2;

    .line 3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$2$$ExternalSyntheticLambda0;->f$1:Landroid/app/IAlarmCompleteListener;

    .line 5
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 7
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 13
    iget-object v3, v2, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 15
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 17
    const/4 v5, 0x0

    .line 18
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickOptions:Landroid/os/Bundle;

    .line 20
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 23
    :try_start_0
    invoke-interface {p0, v0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    return-void
.end method

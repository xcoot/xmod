.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    sget-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 16
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 18
    const/4 v3, 0x0

    .line 19
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickOptions:Landroid/os/Bundle;

    .line 21
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    return-void

    .line 25
    :pswitch_0
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p4, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-wide p2, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$1:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/utils/ManagedApplicationService$1;

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$1:J

    .line 11
    .line 12
    iget-object p0, v0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/vr/VrManagerService$1;

    .line 15
    .line 16
    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(Landroid/content/ComponentName;JI)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3}, Lcom/android/server/vr/VrManagerService$1;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lcom/android/server/utils/ManagedApplicationService$1;

    .line 31
    .line 32
    iget-wide v1, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$1:J

    .line 33
    .line 34
    iget-object p0, v0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/vr/VrManagerService$1;

    .line 37
    .line 38
    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(Landroid/content/ComponentName;JI)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lcom/android/server/vr/VrManagerService$1;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lcom/android/server/utils/ManagedApplicationService$1;

    .line 53
    .line 54
    iget-wide v1, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$1:J

    .line 55
    .line 56
    iget-object p0, v0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/vr/VrManagerService$1;

    .line 59
    .line 60
    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(Landroid/content/ComponentName;JI)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lcom/android/server/vr/VrManagerService$1;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lcom/android/server/utils/ManagedApplicationService;

    .line 75
    .line 76
    iget-wide v1, p0, Lcom/android/server/utils/ManagedApplicationService$$ExternalSyntheticLambda1;->f$1:J

    .line 77
    .line 78
    new-instance p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    .line 79
    .line 80
    iget-object v3, v0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 81
    .line 82
    const/4 v4, 0x4

    .line 83
    invoke-direct {p0, v3, v1, v2, v4}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(Landroid/content/ComponentName;JI)V

    .line 84
    .line 85
    .line 86
    iget-object v0, v0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/vr/VrManagerService$1;

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Lcom/android/server/vr/VrManagerService$1;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

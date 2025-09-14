.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:Lcom/android/server/SystemService$TargetUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/SystemService$TargetUser;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/SystemService$TargetUser;

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
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/SystemService$TargetUser;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "notifHistoryStopUser"

    .line 14
    .line 15
    .line 16
    const-wide/32 v2, 0x80000

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {v0, p0}, Lcom/android/server/notification/NotificationHistoryManager;->onUserStopped(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/SystemService$TargetUser;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const-string/jumbo v1, "notifHistoryUnlockUser"

    .line 48
    .line 49
    .line 50
    const-wide/32 v2, 0x80000

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :try_start_1
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationHistoryManager;->onUserUnlocked(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingManager:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    iget-object v0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string/jumbo v4, "onUnlockUser : "

    .line 79
    .line 80
    .line 81
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string v1, "EdgeLightingClientManager"

    .line 92
    .line 93
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    sget-object p0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    .line 97
    .line 98
    invoke-virtual {v0, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->createEdgeLightingService(Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

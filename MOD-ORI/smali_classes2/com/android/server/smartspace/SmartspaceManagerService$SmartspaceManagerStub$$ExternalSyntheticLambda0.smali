.class public final synthetic Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/smartspace/SmartspaceSessionId;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    invoke-direct {v1, v0, p0}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService$1(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Landroid/app/smartspace/ISmartspaceCallback;

    .line 39
    .line 40
    check-cast p1, Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 41
    .line 42
    iget-object v1, p1, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v2, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService$1(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object p1, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    return-void

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Landroid/app/smartspace/ISmartspaceCallback;

    .line 76
    .line 77
    check-cast p1, Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 78
    .line 79
    iget-object v1, p1, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 86
    .line 87
    if-nez v1, :cond_3

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    new-instance v2, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;

    .line 91
    .line 92
    const/4 v3, 0x0

    .line 93
    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v2}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService$1(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    iget-object p1, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 103
    .line 104
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_2
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, [B

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;->this$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lcom/android/server/permission/access/permission/PermissionService;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    .line 40
    .line 41
    invoke-direct {v4, v2, v3}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v4, p1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->onDeviceIdRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    const/4 v0, 0x0

    .line 75
    move v2, v0

    .line 76
    :goto_0
    if-ge v2, p1, :cond_1

    .line 77
    .line 78
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 85
    .line 86
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 91
    .line 92
    check-cast v3, Ljava/lang/String;

    .line 93
    .line 94
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    move v5, v0

    .line 101
    :goto_1
    if-ge v5, v3, :cond_0

    .line 102
    .line 103
    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 104
    .line 105
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 110
    .line 111
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    .line 116
    .line 117
    check-cast v6, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    add-int/lit8 v5, v5, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    monitor-exit v1

    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    goto :goto_2

    .line 132
    :cond_2
    :try_start_1
    const-string/jumbo p0, "state"

    .line 133
    .line 134
    .line 135
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const/4 p0, 0x0

    .line 139
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_2
    monitor-exit v1

    .line 141
    throw p0

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

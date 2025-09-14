.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/ondeviceintelligence/Feature;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$6:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$7:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    iput p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$2:Landroid/app/ondeviceintelligence/Feature;

    iput-object p4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$4:I

    iput-object p6, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$5:Lcom/android/internal/infra/AndroidFuture;

    iput-object p7, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$6:Lcom/android/internal/infra/AndroidFuture;

    iput-object p8, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$7:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    iput p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$2:Landroid/app/ondeviceintelligence/Feature;

    iput-object p4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$4:I

    iput-object p6, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$5:Lcom/android/internal/infra/AndroidFuture;

    iput-object p7, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$6:Lcom/android/internal/infra/AndroidFuture;

    iput-object p8, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$7:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    .line 7
    .line 8
    iget v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$1:I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$2:Landroid/app/ondeviceintelligence/Feature;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    .line 13
    .line 14
    iget v5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$4:I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$5:Lcom/android/internal/infra/AndroidFuture;

    .line 17
    .line 18
    iget-object v6, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$6:Lcom/android/internal/infra/AndroidFuture;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$7:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroid/app/ondeviceintelligence/IResponseCallback;

    .line 23
    .line 24
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v9, Lcom/android/internal/infra/AndroidFuture;

    .line 30
    .line 31
    invoke-direct {v9}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v7, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 35
    .line 36
    invoke-static {v7, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget-object v1, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    if-nez v6, :cond_0

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    move-object v8, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v8, Lcom/android/internal/infra/AndroidFuture;

    .line 51
    .line 52
    invoke-direct {v8}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;

    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    invoke-direct {v10, v1, v6, v11}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, v10}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-object v1, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 65
    .line 66
    iget-object v6, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 67
    .line 68
    new-instance v10, Lcom/android/server/ondeviceintelligence/BundleUtil$2;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mInferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 71
    .line 72
    invoke-direct {v10, p0, v1, v6, v9}, Lcom/android/server/ondeviceintelligence/BundleUtil$2;-><init>(Landroid/app/ondeviceintelligence/IResponseCallback;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Ljava/util/concurrent/Executor;Lcom/android/internal/infra/AndroidFuture;)V

    .line 73
    .line 74
    .line 75
    move-object v1, p1

    .line 76
    move-object v6, v7

    .line 77
    move-object v7, v8

    .line 78
    move-object v8, v10

    .line 79
    invoke-interface/range {v1 .. v8}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->processRequest(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 83
    .line 84
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    .line 85
    .line 86
    .line 87
    move-result-wide p0

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 89
    .line 90
    invoke-virtual {v9, p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    .line 96
    .line 97
    iget v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$1:I

    .line 98
    .line 99
    iget-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$2:Landroid/app/ondeviceintelligence/Feature;

    .line 100
    .line 101
    iget-object v4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$3:Landroid/os/Bundle;

    .line 102
    .line 103
    iget v5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$4:I

    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$5:Lcom/android/internal/infra/AndroidFuture;

    .line 106
    .line 107
    iget-object v6, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$6:Lcom/android/internal/infra/AndroidFuture;

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda0;->f$7:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    .line 112
    .line 113
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    new-instance v9, Lcom/android/internal/infra/AndroidFuture;

    .line 119
    .line 120
    invoke-direct {v9}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v7, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 124
    .line 125
    invoke-static {v7, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    iget-object v1, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    if-nez v6, :cond_1

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    move-object v8, v1

    .line 138
    goto :goto_1

    .line 139
    :cond_1
    new-instance v8, Lcom/android/internal/infra/AndroidFuture;

    .line 140
    .line 141
    invoke-direct {v8}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 142
    .line 143
    .line 144
    new-instance v10, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;

    .line 145
    .line 146
    const/4 v11, 0x0

    .line 147
    invoke-direct {v10, v1, v6, v11}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v10}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 151
    .line 152
    .line 153
    :goto_1
    iget-object v1, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 154
    .line 155
    iget-object v6, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 156
    .line 157
    new-instance v10, Lcom/android/server/ondeviceintelligence/BundleUtil$1;

    .line 158
    .line 159
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mInferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 160
    .line 161
    invoke-direct {v10, p0, v6, v1, v9}, Lcom/android/server/ondeviceintelligence/BundleUtil$1;-><init>(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Ljava/util/concurrent/Executor;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Lcom/android/internal/infra/AndroidFuture;)V

    .line 162
    .line 163
    .line 164
    move-object v1, p1

    .line 165
    move-object v6, v7

    .line 166
    move-object v7, v8

    .line 167
    move-object v8, v10

    .line 168
    invoke-interface/range {v1 .. v8}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->processRequestStreaming(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V

    .line 169
    .line 170
    .line 171
    iget-object p0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 172
    .line 173
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    .line 174
    .line 175
    .line 176
    move-result-wide p0

    .line 177
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 178
    .line 179
    invoke-virtual {v9, p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    return-object p0

    .line 184
    nop

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

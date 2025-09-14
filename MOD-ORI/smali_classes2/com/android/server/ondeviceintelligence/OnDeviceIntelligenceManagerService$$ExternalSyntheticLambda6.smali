.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

.field public final synthetic f$1:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;->f$1:Lcom/android/internal/infra/AndroidFuture;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;->f$1:Lcom/android/internal/infra/AndroidFuture;

    .line 9
    .line 10
    check-cast p1, Landroid/os/IBinder;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Throwable;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const-string p1, "OnDeviceIntelligenceManagerService"

    .line 20
    .line 21
    const-string v0, "Error forwarding ICancellationSignal to manager layer"

    .line 22
    .line 23
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;

    .line 31
    .line 32
    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;-><init>(Landroid/os/IBinder;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda6;->f$1:Lcom/android/internal/infra/AndroidFuture;

    .line 42
    .line 43
    check-cast p1, Landroid/os/IBinder;

    .line 44
    .line 45
    check-cast p2, Ljava/lang/Throwable;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance p2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;

    .line 57
    .line 58
    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;-><init>(Landroid/os/IBinder;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

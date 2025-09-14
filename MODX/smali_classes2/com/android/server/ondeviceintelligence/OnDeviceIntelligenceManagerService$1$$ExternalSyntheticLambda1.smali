.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/internal/infra/AndroidFuture;

    .line 9
    .line 10
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Throwable;

    .line 13
    .line 14
    const-string v0, "Failed to close parcel file descriptor "

    .line 15
    .line 16
    const-string v1, "OnDeviceIntelligenceManagerService"

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :goto_0
    sget p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_1
    return-void

    .line 45
    :goto_2
    sget p2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :catch_1
    move-exception p1

    .line 54
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_3
    throw p0

    .line 58
    :pswitch_0
    check-cast p0, Landroid/os/Bundle;

    .line 59
    .line 60
    check-cast p1, Ljava/lang/Void;

    .line 61
    .line 62
    check-cast p2, Ljava/lang/Throwable;

    .line 63
    .line 64
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_1
    check-cast p0, Landroid/os/Bundle;

    .line 69
    .line 70
    check-cast p1, Ljava/lang/Void;

    .line 71
    .line 72
    check-cast p2, Ljava/lang/Throwable;

    .line 73
    .line 74
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_2
    check-cast p0, Landroid/os/Bundle;

    .line 79
    .line 80
    check-cast p1, Ljava/lang/Void;

    .line 81
    .line 82
    check-cast p2, Ljava/lang/Throwable;

    .line 83
    .line 84
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_3
    check-cast p0, Landroid/os/Bundle;

    .line 89
    .line 90
    check-cast p1, Ljava/lang/Void;

    .line 91
    .line 92
    check-cast p2, Ljava/lang/Throwable;

    .line 93
    .line 94
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

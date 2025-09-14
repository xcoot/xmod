.class public final synthetic Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$3;Landroid/os/RemoteCallback;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$2:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$2:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    const-string v0, "Unable to close the local parcelFileDescriptor."

    .line 2
    .line 3
    const-string v1, "RemoteWearableSensingService"

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/os/PersistableBundle;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Landroid/os/SharedMemory;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$2:Landroid/os/RemoteCallback;

    .line 19
    .line 20
    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    .line 21
    .line 22
    sget v2, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    .line 23
    .line 24
    invoke-interface {p1, v0, v1, p0}, Landroid/service/wearable/IWearableSensingService;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Landroid/app/wearable/IWearableSensingCallback;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$2:Landroid/os/RemoteCallback;

    .line 37
    .line 38
    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    .line 39
    .line 40
    sget v4, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    .line 41
    .line 42
    invoke-interface {p1, v2, v3, p0}, Landroid/service/wearable/IWearableSensingService;->provideSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, Landroid/app/wearable/IWearableSensingCallback;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$2:Landroid/os/RemoteCallback;

    .line 63
    .line 64
    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    .line 65
    .line 66
    sget v4, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    .line 67
    .line 68
    invoke-interface {p1, v2, v3, p0}, Landroid/service/wearable/IWearableSensingService;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    .line 69
    .line 70
    .line 71
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception p0

    .line 76
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    :goto_1
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

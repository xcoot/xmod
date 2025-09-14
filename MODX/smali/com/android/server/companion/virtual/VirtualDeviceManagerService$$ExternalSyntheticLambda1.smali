.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;->f$0:I

    .line 5
    check-cast p1, Landroid/companion/virtual/IVirtualDeviceListener;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    :try_start_0
    invoke-interface {p1, p0}, Landroid/companion/virtual/IVirtualDeviceListener;->onVirtualDeviceCreated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, "Failed to invoke onVirtualDeviceCreated listener: "

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const-string p1, "VirtualDeviceManagerService"

    .line 35
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_0
    :try_start_1
    invoke-interface {p1, p0}, Landroid/companion/virtual/IVirtualDeviceListener;->onVirtualDeviceClosed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    goto :goto_1

    .line 43
    :catch_1
    move-exception p0

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    const-string v0, "Failed to invoke onVirtualDeviceClosed listener: "

    .line 48
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    const-string p1, "VirtualDeviceManagerService"

    .line 64
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_1
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

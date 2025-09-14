.class public final Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayEmpty(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 5
    invoke-interface {p0, p1}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onDisplayEmpty(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "Unable to call mActivityListener for display: "

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const-string v0, "VirtualDeviceImpl"

    .line 26
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :goto_0
    return-void
.end method

.method public final onTopActivityChanged(ILandroid/content/ComponentName;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    const/16 v0, -0x2710

    invoke-interface {p0, p1, p2, v0}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unable to call mActivityListener for display: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VirtualDeviceImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onTopActivityChanged(ILandroid/content/ComponentName;I)V
    .locals 0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    invoke-interface {p0, p1, p2, p3}, Landroid/companion/virtual/IVirtualDeviceActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to call mActivityListener for display: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VirtualDeviceImpl"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.class public final Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DISABLE:I = 0x2

.field public static final ENABLE:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;->this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;

    .line 5
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;

    .line 10
    iget p1, p1, Landroid/os/Message;->what:I

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq p1, v1, :cond_2

    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq p1, v1, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;->this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    .line 21
    iget-object p1, v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mInterfaceName:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->disablePacketTracing(Ljava/lang/String;)I

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;->this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    .line 29
    iget v1, v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mNetworkIndex:I

    .line 31
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->hasEthernetHeader()Z

    .line 34
    move-result v2

    .line 35
    invoke-virtual {p1, v1, v2}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->updateNetworkInterfaceData(IZ)V

    .line 38
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;->this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    .line 40
    iget-object p1, v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mInterfaceName:Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->enablePacketTracing(Ljava/lang/String;)I

    .line 45
    :goto_0
    return-void
.end method

.class public final Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    .line 7
    .line 8
    invoke-direct {v0, v1, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;-><init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;Landroid/net/Network;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$1;->this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->sendMessageToHandler(ILcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

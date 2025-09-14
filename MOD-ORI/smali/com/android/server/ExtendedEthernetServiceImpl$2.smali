.class public final Lcom/android/server/ExtendedEthernetServiceImpl$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/EthernetManager$InterfaceStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$2;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .locals 2

    .line 1
    const-string/jumbo p1, "onInterfaceStateChanged "

    .line 2
    .line 3
    .line 4
    const-string v0, ", state: "

    .line 5
    .line 6
    const-string v1, ", conf: "

    .line 7
    .line 8
    invoke-static {p3, p2, p1, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p4, "ExtendedEthernetServiceImpl"

    .line 20
    .line 21
    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$2;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    const/4 p4, 0x1

    .line 31
    if-ne p3, p4, :cond_1

    .line 32
    .line 33
    const/4 p3, 0x2

    .line 34
    if-ne p2, p3, :cond_0

    .line 35
    .line 36
    move p1, p4

    .line 37
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$mupdateEthCableConnectNotification(Lcom/android/server/ExtendedEthernetServiceImpl;Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$mupdateEthCableConnectNotification(Lcom/android/server/ExtendedEthernetServiceImpl;Z)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.class public final Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final interfaceAdded(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIfaceMatch:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v0, "interfaceAdded: "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ExtendedEthernetServiceImpl"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v1, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIfaceMatch:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v1, "interfaceLinkStateChanged: "

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "ExtendedEthernetServiceImpl"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v1, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final interfaceRemoved(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIfaceMatch:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v0, "interfaceRemoved: "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ExtendedEthernetServiceImpl"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v1, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.class public final Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ipsec/ike/IkeSessionCallback;


# instance fields
.field public final mToken:I

.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "IkeClosed for token "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {v0, p0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msessionClosed(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "IkeClosedExceptionally for token "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    .line 25
    .line 26
    invoke-static {v0, p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msessionClosed(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onError(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "IkeError for token "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {v0, p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onIkeSessionConnectionInfoChanged(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "onIkeSessionConnectionInfoChanged for token "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;

    .line 31
    .line 32
    invoke-direct {v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;-><init>(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 33
    .line 34
    .line 35
    const/16 p1, 0xc

    .line 36
    .line 37
    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onOpened(Landroid/net/ipsec/ike/IkeSessionConfiguration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "IkeOpened for token "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;->mToken:I

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionConfiguration;->getIkeSessionConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;-><init>(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0xc

    .line 39
    .line 40
    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ipsec/ike/ChildSessionCallback;


# instance fields
.field public mIsChildOpened:Z

.field public final mIsOpportunistic:Z

.field public final mToken:I

.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsChildOpened:Z

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    .line 10
    .line 11
    iput-boolean p3, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsOpportunistic:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "ChildClosed for token "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

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
    sget-object v2, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsOpportunistic:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsChildOpened:Z

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 33
    .line 34
    const-string v0, "ChildClosed for unopened opportunistic child; ignoring"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 41
    .line 42
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {v1, v2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;-><init>(Ljava/lang/Exception;)V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "ChildClosedExceptionally for token "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

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
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsOpportunistic:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsChildOpened:Z

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 31
    .line 32
    const-string p1, "ChildClosedExceptionally for unopened opportunistic child; ignoring"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 39
    .line 40
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    .line 41
    .line 42
    invoke-static {v0, p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onIpSecTransformCreated(Landroid/net/IpSecTransform;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    const-string v1, "ChildTransformCreated; Direction: "

    .line 4
    .line 5
    const-string v2, "; token "

    .line 6
    .line 7
    invoke-static {p2, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

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
    sget-object v2, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 26
    .line 27
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    .line 33
    .line 34
    invoke-direct {v1, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;-><init>(Landroid/net/IpSecTransform;I)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x5

    .line 38
    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onIpSecTransformDeleted(Landroid/net/IpSecTransform;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    const-string v0, "ChildTransformDeleted; Direction: "

    .line 4
    .line 5
    const-string v1, "; for token "

    .line 6
    .line 7
    invoke-static {p2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object p2, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onIpSecTransformsMigrated(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "ChildTransformsMigrated; token "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

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
    sget-object v2, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 25
    .line 26
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    .line 32
    .line 33
    invoke-direct {v1, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;-><init>(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    .line 34
    .line 35
    .line 36
    const/16 p1, 0xb

    .line 37
    .line 38
    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onOpened(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    invoke-direct {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;-><init>(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->onOpened(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    return-void
.end method

.method public onOpened(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChildOpened for token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsOpportunistic:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const-string v0, "ChildOpened for opportunistic child; suppressing event message"

    invoke-virtual {p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mIsChildOpened:Z

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;->mToken:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    invoke-direct {v1, p1}, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

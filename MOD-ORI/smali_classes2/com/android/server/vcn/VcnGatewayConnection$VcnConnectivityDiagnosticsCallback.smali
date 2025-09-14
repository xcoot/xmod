.class public final Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;
.super Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;->getNetwork()Landroid/net/Network;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Data stall suspected on "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnConnectivityDiagnosticsCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 32
    .line 33
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$EventDataStallSuspectedInfo;-><init>(Landroid/net/Network;)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0xd

    .line 39
    .line 40
    const/high16 v1, -0x80000000

    .line 41
    .line 42
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

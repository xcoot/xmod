.class public final Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/DataConnectionStats;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DataConnectionStats;Lcom/android/server/am/DataConnectionStats$PhoneStateListenerExecutor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    .line 3
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onDataActivity(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    .line 6
    return-void
.end method

.method public final onDataConnectionStateChanged(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    .line 3
    iput p1, p0, Lcom/android/server/am/DataConnectionStats;->mDataState:I

    .line 5
    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    .line 8
    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    .line 3
    iput-object p1, v0, Lcom/android/server/am/DataConnectionStats;->mServiceState:Landroid/telephony/ServiceState;

    .line 5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    .line 8
    move-result p1

    .line 9
    iput p1, v0, Lcom/android/server/am/DataConnectionStats;->mNrState:I

    .line 11
    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    .line 13
    invoke-virtual {p0}, Lcom/android/server/am/DataConnectionStats;->notePhoneDataConnectionState()V

    .line 16
    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/am/DataConnectionStats;

    .line 3
    iput-object p1, p0, Lcom/android/server/am/DataConnectionStats;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 5
    return-void
.end method

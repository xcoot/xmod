.class public final Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 14
    .line 15
    const/high16 v0, -0x80000000

    .line 16
    .line 17
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/16 p2, 0xa

    .line 22
    .line 23
    if-ne p1, p2, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 26
    .line 27
    iget-boolean p1, p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRestart:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-string p1, "KnoxMUMContainerPolicy"

    .line 34
    .line 35
    const-string p2, "***** Restarting Bluetooth *****"

    .line 36
    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mRestart:Z

    .line 44
    .line 45
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method
